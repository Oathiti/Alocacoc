using UnityEngine;
using UnityEngine.AI;

public class AIFollowTarget : MonoBehaviour
{

    public GameObject target;

    public NavMeshAgent navMeshAgent;

    private const float farAwayFromTarget = 1.5f;

    void Awake()
    {
        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }
    }

    void Update()
    {
        FollowTarget();
    }

    void FollowTarget()
    {
        if (target == null) return;

        if ((transform.position - target.transform.position).magnitude <= farAwayFromTarget)
        {
            navMeshAgent.isStopped = true;
        }
        else
        {
            navMeshAgent.isStopped = false;
        }
        navMeshAgent.SetDestination(target.transform.position);
    }

}
