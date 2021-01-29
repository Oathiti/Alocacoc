using UnityEngine;
using UnityEngine.Events;

public class TriggerEvent : MonoBehaviour
{
   public UnityEvent onTriggerEnter;
   public UnityEvent onTriggerExit;

   void OnTriggerEnter(Collider other)
   {
       onTriggerEnter.Invoke();
   }

   void OnTriggerExit(Collider other)
   {
       onTriggerEnter.Invoke();
   }
}
