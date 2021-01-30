using UnityEngine;

public class NPCLoveCat : ReactToMeow
{

    public AIRandomWalk randomWalk;

    public AIFollowTarget followTarget;

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
        randomWalk.enabled = false;
        followTarget.enabled = true;
        
        var followerList = invoker.GetComponent<FollowerList>();

        if (followerList.follower != null && followerList.follower.Count > 0)
        {
            followTarget.target = followerList.follower[followerList.follower.Count - 1];
        } else {
            followTarget.target = invoker;
        }

        followerList.AddFollower(this.gameObject);
    }


}