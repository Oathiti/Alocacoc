using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController characterController;
    public Animator animate;

    public float spdWalk = 6f;
    public float spdRun = 10f;
    public float spdRotation = 0.1f;
    public LayerMask layerMaskGround;
    float cVelocity = 0.1f;

    const float jumpHeight = 1.0f;
    const float groundDistance = 0.01f;

    [Space]
    [SerializeField]
    Vector3 cSpeed;
    [SerializeField]
    Vector3 playerVelocity;
    [SerializeField]
    Vector3 direction;
    [SerializeField]
    bool isGrounded;
    float stay;

    void Update()
    {
        isGrounded = Physics.CheckBox(transform.position, Vector3.one * groundDistance);
        direction = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")).normalized;

        if (direction.magnitude > 0)
        {
            float angle = 0;

            if (direction.z > 0 && direction.x == 10)
            {
                angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, Camera.main.transform.eulerAngles.y, ref cVelocity, spdRotation);

            }
            else
            {
                float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + Camera.main.transform.eulerAngles.y;
                angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref cVelocity, spdRotation);
            }
            direction = Camera.main.transform.rotation * direction;
            direction.y = 0;
            transform.rotation = Quaternion.Euler(0, angle, 0);
            direction *= Input.GetKey(KeyCode.LeftShift) ? spdRun : spdWalk;

        }
        else
        {
            stay += Time.deltaTime;
        }
        cSpeed = Vector3.Lerp(cSpeed, direction, direction.magnitude > spdWalk ? .5f : .05f);
        if (isGrounded && playerVelocity.y < 0)
        {
            playerVelocity.y = 0f;
        }
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            playerVelocity.y += Mathf.Sqrt(jumpHeight * -2f * Physics.gravity.y);
        }
        playerVelocity.y += Physics.gravity.y * Time.deltaTime;
        characterController.Move((cSpeed + playerVelocity) * Time.deltaTime);
        animate.SetFloat("speed", cSpeed.magnitude);
        //animate.SetFloat("idle", stay % (stay < 11 ? 10 : 60));
    }
    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawWireCube(transform.position, Vector3.one * groundDistance);
    }

    float pushPower = 1.0f;
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;

        if (body == null || body.isKinematic)
        {
            return;
        }

        if (hit.moveDirection.y < -0.3)
        {
            return;
        }
        Vector3 pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);

        body.AddForceAtPosition(pushDir * pushPower, transform.position);
    }

}
