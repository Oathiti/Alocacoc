using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CallInteract : MonoBehaviour
{
    public InteractInterface currentInteract;
    public KeyCode key;

    public AudioClip meawSound;
    public AudioSource audio;

    private void Start()
    {
        audio = GetComponent<AudioSource>();
    }

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
        if (Input.GetMouseButtonDown(0))
        {
            CallMeow();
        }
    }

    void CallMeow()
    {
        audio.clip = meawSound;
        if (!audio.isPlaying)
            audio.Play();
        RaycastHit ray;
        if (Physics.Linecast(transform.position + (Vector3.up * 0.3f), transform.position + (transform.rotation * Vector3.forward * 3f) + (Vector3.up * 0.3f), out ray))
        {
            print("Hi");
            var reactToMeow = ray.collider.GetComponent<ReactToMeow>();
            if (reactToMeow)
            {
                reactToMeow.MeowReact(this.gameObject);
            }
        }
        else
        {
            print("No Coll");
        }
    }
    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawLine(transform.position + (Vector3.up * 0.3f), transform.position + (transform.rotation * Vector3.forward * 3f) + (Vector3.up * 0.3f));
    }
}
