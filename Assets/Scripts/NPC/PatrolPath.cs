using UnityEngine;

public class PatrolPath : MonoBehaviour
{

    public Transform[] points;

    public Transform GetNextPoint(Transform currentPoint)
    {
        for (int i = 0; i < points.Length - 1; i++)
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
    
}
