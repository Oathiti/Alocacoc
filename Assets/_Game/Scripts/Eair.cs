using UnityEngine;

public class Eair : MonoBehaviour
{
    public delegate void heardHandler(Collider other);

    public heardHandler OnHeardEvent;

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "sound")
        {
            if (OnHeardEvent != null)
            {
                OnHeardEvent(other);
            }
        }
    }

}
