using UnityEngine;

public class NPCLoveCat : ReactToMeow
{

    public AIRandomWalk randomWalk;

    public AIFollowTarget followTarget;

    private bool isReacted = false;

    void Awake()
    {
        if (randomWalk == null)
        {
            randomWalk = GetComponent<AIRandomWalk>();
        }

        if (followTarget == null)
        {
            followTarget = GetComponent<AIFollowTarget>();
        }
    }

    public override void MeowReact(GameObject invoker)
    {  
        if (isReacted) return;
        
        randomWalk.enabled = false;
        followTarget.enabled = true;
        isReacted = true;
        
        var followerList = invoker.GetComponent<FollowerList>();

        if (followerList.list == null || followerList.list.Count <= 0)
        {
            followTarget.target = invoker;
        } else {
            followTarget.target = followerList.list[followerList.list.Count - 1];
        }

        followerList.AddFollower(this.gameObject);
    }


}