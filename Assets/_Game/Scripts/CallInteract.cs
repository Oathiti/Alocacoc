using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CallInteract : MonoBehaviour
{
    public InteractInterface currentInteract;
    public KeyCode key;

    private void OnTriggerEnter(Collider other)
    {
        other.TryGetComponent(out currentInteract);
    }
    private void OnTriggerExit(Collider other)
    {
        currentInteract = null;
    }
    private void Update()
    {
        if (Input.GetKeyDown(key))
        {
            currentInteract?.Interact();
        }
    }
}
