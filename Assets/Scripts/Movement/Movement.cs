using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController characterController;

    public float spdWalk = 6f;
    public float spdRun = 10f;
    public float spdRotation = 0.1f;
    public LayerMask layerMaskGround;

    float cVelocity = 0.1f;
    int jumpCount = 1;

    const float jumpHeight = 1.0f;
    const float groundDistance = 0.01f;

    [Space]
    [SerializeField]
    Vector3 playerVelocity;
    [SerializeField]
    Vector3 direction;
    [SerializeField]
    bool isGrounded;

    void Update()
    {
        isGrounded = Physics.CheckBox(transform.position, Vector3.one * groundDistance);
        direction = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")).normalized;

        if (direction.magnitude >= 0.1f)
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
            //characterController.Move(direction * spdWalk * Time.deltaTime);

        }
        if (isGrounded && playerVelocity.y < 0)
        {
            playerVelocity.y = 0f;
        }
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            playerVelocity.y += Mathf.Sqrt(jumpHeight * -2f * Physics.gravity.y);
        }
        playerVelocity.y += Physics.gravity.y * Time.deltaTime;
        characterController.Move((playerVelocity + direction) * Time.deltaTime);
    }
    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawWireCube(transform.position, Vector3.one * groundDistance);
    }

    float pushPower = 1.0f;
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;

        // no rigidbody
        if (body == null || body.isKinematic)
        {
            return;
        }

        // We dont want to push objects below us
        if (hit.moveDirection.y < -0.3)
        {
            return;
        }

        // Calculate push direction from move direction,
        // we only push objects to the sides never up and down
        Vector3 pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);

        // If you know how fast your character is trying to move,
        // then you can also multiply the push velocity by that.

        // Apply the push
        body.velocity = pushDir * pushPower;
    }
}
