using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class ActionIdle : NPCAction
{

    public Transform[] idlePoints;

    public Transform currentIdlePoint;

    public NavMeshAgent navMeshAgent;

    private const float REACH_IDLE_POINT_DISTANCE = 1.0f;


    public override void StartAction()
    {
        isRunning = true;
        if (currentIdlePoint == null)
        {
            GetNewIdlePoint();
        }
    }

    public override void EndAction()
    {
        isRunning = false;
        currentIdlePoint = null;
    }

    void Awake()
    {
        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }
    }

    void Update()
    {
        if (!isRunning) return;

        if (currentIdlePoint)
        {
            GoToIdlePoint();
        } else {
            if (idlePoints == null || idlePoints.Length <= 0)
            {
                navMeshAgent.isStopped = true;
            }
            else
            {
                GetNewIdlePoint();
            }
        }
    }

    void GoToIdlePoint()
    {
        if (currentIdlePoint == null) return;

        navMeshAgent.isStopped = false;
        navMeshAgent.SetDestination(currentIdlePoint.position);
    }

    public Transform GetNewIdlePoint()
    {
        if (idlePoints.Length == 1) return idlePoints[0];

        int pointIndex = Random.Range(0, idlePoints.Length - 1);
        currentIdlePoint = idlePoints[pointIndex];

        return currentIdlePoint;
    }

}
