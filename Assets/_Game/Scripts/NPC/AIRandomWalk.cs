using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class AIRandomWalk : NPCAction
{

    public Vector3 desiredPosition;

    public UnityEngine.AI.NavMeshAgent navMeshAgent;

    private const float minTimeToChange = 3f;
    private const float maxTimeToChange = 3f;

    public int pattern;

    private Vector3 minRandomRange = new Vector3(-48, 0, -48);
    private Vector3 maxRandomRange = new Vector3(48, 0, 48);

    private const float REACH_DISTANCE = 1.0f;


    public override void StartAction()
    {
        RandomPosition();
    }

    public override void EndAction()
    {

    }

    void Awake()
    {
        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }
    }

    void Start()
    {
        StartAction();
    }

    void Update()
    {
        GoToNewPositionWhenFinish();        
    }


    void RandomPosition()
    {
        StopCoroutine("TimerChangePosition");
        pattern = UnityEngine.Random.Range(0, 4);

        float x;
        float z;
        if (pattern == 0 || pattern == 1 || pattern == 2)
        {
            int walkAroundRange = 10;

            if (pattern == 2)
                walkAroundRange = 20;

            x = UnityEngine.Random.Range(transform.position.x - walkAroundRange, transform.position.x + walkAroundRange);
            z = UnityEngine.Random.Range(transform.position.z - walkAroundRange, transform.position.z + walkAroundRange);

            if (pattern == 1)
            {
                StartCoroutine("TimerChangePosition");
            }

            x = Mathf.Max(minRandomRange.x, x);
            x = Mathf.Min(maxRandomRange.x, x);
            z = Mathf.Max(minRandomRange.z, z);
            z = Mathf.Min(maxRandomRange.z, z);
        } else
        {
            x = UnityEngine.Random.Range(minRandomRange.x, maxRandomRange.x);
            z = UnityEngine.Random.Range(minRandomRange.z, maxRandomRange.z);
        }

        desiredPosition = new Vector3(x, 0, z);
        navMeshAgent.SetDestination(desiredPosition);
    }

    void GoToNewPositionWhenFinish()
    {
        if (navMeshAgent.remainingDistance <= REACH_DISTANCE)
        {
            RandomPosition();
        }

        if (navMeshAgent.destination != desiredPosition)
        {
            navMeshAgent.SetDestination(desiredPosition);
        }   
    }

    IEnumerator TimerChangePosition()
    {
        yield return new WaitForSeconds(2);
        RandomPosition();
        yield return null;
    }

}