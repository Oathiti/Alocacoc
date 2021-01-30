using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class ActionPatrol : NPCAction
{

    public PatrolPath patrolPath;

    public Transform currentPoint;

    public NavMeshAgent navMeshAgent;

    private const float REACH_DISTANCE = 1.0f;

    public override void StartAction()
    {
        navMeshAgent.isStopped = false;
        isRunning = true;
    }

    public override void EndAction()
    {
        isRunning = false;
        currentPoint = null;
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

        WalkOnPath();   
    }

    protected void FindNearestPoint()
    {
        Transform nearest = patrolPath.GetNearestPoint(this.transform);

        SetNewPoint(nearest);
    }

    protected void WalkOnPath()
    {
        if (currentPoint == null)
        {
            FindNearestPoint();
            return;
        }        

        float distanceToPoint = (transform.position - currentPoint.transform.position).magnitude;
        if (distanceToPoint <= REACH_DISTANCE)
        {
            Transform newPoint = patrolPath.GetNextPoint(currentPoint);
            SetNewPoint(newPoint);
        }
    }

    protected void SetNewPoint(Transform point)
    {
        currentPoint = point;

        navMeshAgent.SetDestination(currentPoint.position);
    }

}