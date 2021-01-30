using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController characterController;
    public Rigidbody rigi;
    public Animator animate;

    public float spdWalk = 6f;
    public float spdRun = 10f;
    public float spdRotation = 0.01f;
    public LayerMask layerMaskGround;
    float cVelocity = 0.1f;

    const float jumpHeight = 1.0f;
    const float groundDistance = 0.02f;

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
    float targetAngle;

    void Update()
    {
        isGrounded = Physics.CheckBox(transform.position, Vector3.one * groundDistance, Quaternion.identity, layerMaskGround) || characterController.isGrounded;
        direction = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical")).normalized;


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
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref cVelocity, Input.GetKey(KeyCode.LeftShift) ? spdRotation : spdRotation * 2);
            transform.rotation = Quaternion.Euler(0, angle, 0);

            direction = Camera.main.transform.rotation * direction;
            direction.y = 0;
            direction *= Input.GetKey(KeyCode.LeftShift) ? spdRun : spdWalk;
            //cSpeed = Vector3.Lerp(cSpeed, direction, spdWalk > direction.magnitude ? .01f : .05f);
        }
        else
        {
            //cSpeed = Quaternion.Euler(0, transform.eulerAngles.y, 0) * Vector3.Lerp(cSpeed, Vector3.zero, spdWalk > direction.magnitude ? .01f : .05f);
            stay += Time.deltaTime;
        }
        cSpeed = Vector3.Lerp(cSpeed, direction, spdWalk > cSpeed.magnitude ? .02f : .05f);

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
        //print(cSpeed.magnitude);
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
