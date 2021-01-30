using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class RotateInteract : MonoBehaviour, InteractInterface
{
    public GameObject rotateObj;
    public float angle;
    [ContextMenu("Rotate")]
    public void Interact()
    {
        angle = rotateObj.transform.rotation.eulerAngles.y + 45;
    }
    private void FixedUpdate()
    {
        rotateObj.transform.rotation = Quaternion.Lerp(rotateObj.transform.rotation, Quaternion.Euler(rotateObj.transform.rotation.eulerAngles.x, angle, rotateObj.transform.rotation.eulerAngles.z), .5f);

    }
}
