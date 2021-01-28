using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController characterController;
    public float spdWalk = 6f;
    public float spdRotation = 0.1f;
    public LayerMask layerMaskGround;

    float cVelocity = 0.1f;
    const float gravity = -9.8f;
    const float jumpHeight = 1.0f;
    const float groundDistance = 0.1f;

    [Space]
    [SerializeField]
    Vector3 playerVelocity;

    void Update()
    {
        Vector3 direction = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")).normalized;

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
            direction = Camera.main.transform.TransformDirection(direction);
            direction.y = 0;

            transform.rotation = Quaternion.Euler(0, angle, 0);
            characterController.Move(direction * spdWalk * Time.deltaTime);
        }
        if (characterController.isGrounded )
        {
            playerVelocity.y = 0;
            if (Input.GetKeyDown(KeyCode.Space))
            {
                playerVelocity.y += Mathf.Sqrt(jumpHeight * -3.0f * gravity);
            }
        }
        else
        {
            playerVelocity.y += gravity * Time.deltaTime;
        }



        characterController.Move(playerVelocity * Time.deltaTime);

    }
}
