using UnityEngine;
using UnityEngine.Events;

public class TriggerEvent : MonoBehaviour
{
   public UnityEvent<Collider> onTriggerEnter;
   public UnityEvent<Collider> onTriggerExit;

   void OnTriggerEnter(Collider other)
   {
       onTriggerEnter.Invoke(other);
   }

   void OnTriggerExit(Collider other)
   {
       onTriggerEnter.Invoke(other);
   }
}
