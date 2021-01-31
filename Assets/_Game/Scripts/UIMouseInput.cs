using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIMouseInput : MonoBehaviour
{
    public Image dL, dR, dU, dD;
    public Sprite l0, l1;
    public Sprite r0, r1;
    public Sprite u0, u1;
    public Sprite d0, d1;

    // Update is called once per frame
    void Update()
    {
        float f;
        //print(Input.GetAxisRaw("Mouse X") + "|" + Input.GetAxisRaw("Mouse Y"));
        f = Input.GetAxisRaw("Mouse X");
        dL.sprite = f < -0.1f ? l1 : l0;
        dR.sprite = f > 0.1f ? r1 : r0;
        f = Input.GetAxisRaw("Mouse Y");
        dU.sprite = f > 0.1f ? u1 : u0;
        dD.sprite = f < -0.1f ? d1 : d0;
    }
}
