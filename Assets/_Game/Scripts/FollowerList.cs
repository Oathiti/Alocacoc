using System.Collections.Generic;
using UnityEngine;

public class FollowerList : MonoBehaviour
{

    public List<GameObject> follower = new List<GameObject>();

    public void AddFollower(GameObject newFollower)
    {
        follower.Add(newFollower);
    }

}