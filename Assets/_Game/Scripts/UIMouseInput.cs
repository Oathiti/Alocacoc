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
        if ((f = Input.GetAxisRaw("MOUSE X")) > 0)
        {
            dL.sprite = f < 0 ? l1 : l0;
            dR.sprite = f < 0 ? r1 : r0;
        }
        if ((f = Input.GetAxisRaw("MOUSE Y")) > 0)
        {
            dU.sprite = f < 0 ? u1 : u0;
            dD.sprite = f < 0 ? d1 : d0;
        }
    }
}
