using UnityEngine;

public class PatrolPath : MonoBehaviour
{

    public Transform[] points;

    void OnDrawGizmos()
    {
        if (points == null || points.Length <= 1) return;

        Gizmos.color = Color.blue;

        for(var i = 0; i <= points.Length - 1; i++)
        {
            int nextPoint = i + 1;
            if (i >= points.Length - 1)
                nextPoint = 0;
            
            if (points[i] == null || points[nextPoint] == null) return;

            Gizmos.DrawLine(points[i].position, points[nextPoint].position);
        }
    }

    public Transform GetNextPoint(Transform currentPoint)
    {
        if (points.Length <= 0) return null;

        for (int i = 0; i <= points.Length - 1; i++)
        {
            if (points[i] == currentPoint)
            {
                if(i < points.Length - 1)
                {
                    return points[i + 1];
                }
                else
                {
                    return points[0];
                }
            }
        }

        return null;
    }

    public Transform GetNearestPoint(Transform target)
    {
        if (points.Length <= 0) return null;

        Transform nearest = points[0];
        float minDistance = (transform.position - nearest.position).magnitude;


        for (int i = 1; i < points.Length - 1; i++)
        {
            float distance = (transform.position - points[i].position).magnitude;
            if (distance < minDistance)
            {
                minDistance = distance;
                nearest = points[i];
            }
        }

        return nearest;
    }    

}
