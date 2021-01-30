using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Eye : MonoBehaviour
{

    public delegate void InSightHandler(Collider hit);
    public delegate void InSightListHandler(List<GameObject> list);
    public InSightHandler OnInSight;
    public InSightListHandler OnInSightListUpdate;

    public SphereCollider sphereCollider;
    public float fieldOfViewAngle = 10f;
    public List<GameObject> inSight = new List<GameObject>();

    void OnTriggerStay(Collider hit)
    {
        Debug.Log("Stay");
        if (IsInLineOfSight(hit)) 
        {
            Debug.Log("In");
            Debug.Log("true");
            if (!inSight.Contains(hit.gameObject)) 
            {
                inSight.Add(hit.gameObject);
                if (OnInSightListUpdate != null) 
                {
                    OnInSightListUpdate(inSight);
                }
            }
        }
    }

    protected virtual void OnTriggerExit(Collider other)
    {
        if (inSight.Contains(other.gameObject))
        {
            inSight.Remove(other.gameObject);
            if (OnInSightListUpdate != null) 
            {
                OnInSightListUpdate(inSight);
            }
        }
    }

    void OnDrawGizmos()
    {
        // Gizmos.DrawLine(transform.position, transform.forward);
    }
    
    protected virtual bool IsInLineOfSight(Collider other)
    {
        Vector3 direction = other.transform.position - transform.position;
        float angle = Vector3.Angle(direction, transform.forward);

        // if (angle < fieldOfViewAngle * 0.5f) 
        // {
            Debug.DrawLine(transform.position, direction);
            RaycastHit hit;
            if(Physics.Raycast(transform.position, direction.normalized, out hit, sphereCollider.radius))
            {
                Debug.Log("true");
                return true;
            }
        // }

        return false;
    }

}
