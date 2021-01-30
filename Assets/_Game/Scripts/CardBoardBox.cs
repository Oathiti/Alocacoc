using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardBoardBox : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Movement movement;
        if(other.TryGetComponent(out movement))
        {
            movement.StartCoroutine(movement.Box());
            gameObject.SetActive(false);
        }
    }
}
