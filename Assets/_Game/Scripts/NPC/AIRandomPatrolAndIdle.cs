using UnityEngine;

public class AIRandomPatrolAndIdle : MonoBehaviour
{
    public NPC npc;

    public ActionIdle actionIdle;
    public ActionPatrol actionPatrol;    

    public float timeInCurrentState = 0f;

    public float minTimeChangeState = 5f;
    public float maxTimeChangeState = 10f;

    private float timeToChangeState = 5f;

    void Update()
    {
        timeInCurrentState += Time.deltaTime;

        if (npc.state == NPCState.Idle)
        {
            ChangeToIdle();
        }
        else
        {
            ChangeToPatrol();
        }

        RandomChangeStateIfEnoughTime();
    }

    protected void ChangeToIdle()
    {
        npc.state = NPCState.Idle;
        if (actionIdle.isRunning) return;

        actionPatrol.EndAction();
        actionIdle.StartAction();
    }
    
    protected void ChangeToPatrol()
    {
        npc.state = NPCState.Patrol;
        if (actionPatrol.isRunning) return;

        actionIdle.EndAction();
        actionPatrol.StartAction();
    }

    protected void RandomChangeStateIfEnoughTime()
    {
        if (timeInCurrentState >= timeToChangeState)
        {
            int ran = Random.Range(0, 10);

            if (ran > 4) 
            {
                ChangeToPatrol();
            }
            else
            {
                ChangeToIdle();
            }

            RandomTimeChangeState();
            timeInCurrentState = 0;
        }
    }

    protected void RandomTimeChangeState()
    {
        timeToChangeState = Random.Range(minTimeChangeState, maxTimeChangeState);
    }

}
