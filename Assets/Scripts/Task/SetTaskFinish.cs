using UnityEngine;

public class SetTaskFinish : MonoBehaviour
{

    public Task[] tasks;

    public void SetFinish()
    {
        foreach(var task in tasks)
        {
            task.SetFinish(true);
        }
    }

    public void SetUnfinish()
    {
        foreach(var task in tasks)
        {
            task.SetFinish(false);
        }
    }
}