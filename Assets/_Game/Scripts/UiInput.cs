using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class UiInput : MonoBehaviour
{
    public KeyCode key;
    public Image keyImg;
    public Sprite activeKey;
    Sprite defaulKey;

    private void Start()
    {
        defaulKey = keyImg.sprite;
    }

    private void Update()
    {
        keyImg.sprite = Input.GetKey(key)? activeKey:defaulKey;
    }

}
