using System.Collections.Generic;
using UnityEngine;

public class FollowerList : MonoBehaviour
{

    public List<GameObject> list = new List<GameObject>();

    public void AddFollower(GameObject newFollower)
    {
        list.Add(newFollower);
    }

}