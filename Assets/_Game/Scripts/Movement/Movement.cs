using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController characterController;
    public Cinemachine.CinemachineFreeLook cinemachineFreeLook;
    public Animator animate;

    public float spdWalk = 6f;
    public float spdRun = 10f;
    public float spdRotation = 0.01f;
    float cVelocity = 0.1f;

    public GameObject cardboradbox;
    public GameObject effectBox;
    public static bool inbox;

    const float jumpHeight = 1.0f;

    [Space]
    Vector3 cSpeed;
    [SerializeField]
    Vector3 playerVelocity;
    Vector3 direction;
    bool isGrounded;
    float targetAngle;
    [SerializeField]
    float stay;
    [SerializeField]
    float targetIdle;
    float run;
    Coroutine coroutineAnima;

    void Update()
    {
        isGrounded = characterController.isGrounded;
        animate.SetBool("isGround", isGrounded);
        direction = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical")).normalized;

        if ((run -= Time.deltaTime) > 0)
        {
            targetAngle = Camera.main.transform.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref cVelocity, Input.GetKey(KeyCode.LeftShift) ? spdRotation : spdRotation * 2);
            transform.rotation = Quaternion.Euler(0, angle, 0);
            direction = Vector3.forward * spdRun;
            direction = Camera.main.transform.rotation * direction;
            direction.y = 0;
        }
        else
        {

            if (direction.z > 0 && direction.x == 0)
            {
                targetAngle = Camera.main.transform.eulerAngles.y;

            }
            else
            {
                targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + Camera.main.transform.eulerAngles.y;
            }

            if (direction.magnitude > 0)
            {
                stay = 0;
                targetIdle = 0;

                float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref cVelocity, Input.GetKey(KeyCode.LeftShift) ? spdRotation : spdRotation * 2);
                transform.rotation = Quaternion.Euler(0, angle, 0);

                direction = Camera.main.transform.rotation * direction;
                direction.y = 0;
                direction *= !Input.GetKey(KeyCode.LeftShift) ? spdRun : spdWalk;
            }
            else
            {
                if ((stay += Time.deltaTime) > 20 && coroutineAnima == null)
                {
                    stay = 0;
                    coroutineAnima = StartCoroutine(WaitAnimation());
                }
            }
        }
        cSpeed = Vector3.Lerp(cSpeed, direction, spdWalk > cSpeed.magnitude ? .02f : .05f);

        if (isGrounded && playerVelocity.y < 0)
        {
            playerVelocity.y = 0f;
        }
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            playerVelocity.y += Mathf.Sqrt(jumpHeight * -2f * Physics.gravity.y);
            animate.Play("jump_up");
        }
        playerVelocity.y += Physics.gravity.y * Time.deltaTime;
        characterController.Move((cSpeed + playerVelocity) * Time.deltaTime);
        animate.SetFloat("speed", cSpeed.magnitude);
    }
    private void FixedUpdate()
    {
        animate.SetFloat("idle", Mathf.Lerp(animate.GetFloat("idle"), targetIdle, 0.05f));
    }
    IEnumerator WaitAnimation()
    {

        animate.Play("Move", -1, 0);
        stay = 0;
        targetIdle = .5f;
        yield return new WaitForSeconds(5f);
        targetIdle = 0;
        stay = 0;
        coroutineAnima = null;
    }
    public void Scare()
    {
        cinemachineFreeLook.m_XAxis.Value += 180;
        run = 2;
    }
    public IEnumerator Box()
    {
        inbox = true;
        cardboradbox.SetActive(true);
        effectBox.SetActive(true);
        yield return new WaitForSeconds(10f);
        effectBox.SetActive(false);
        effectBox.SetActive(true);
        cardboradbox.SetActive(false);
        inbox = false;
    }
}
