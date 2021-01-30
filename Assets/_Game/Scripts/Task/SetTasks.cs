using UnityEngine;

public class SetTasks : MonoBehaviour
{

    public Task[] tasks;

    public void AddTasks()
    {
        TaskPanelController.instance.AddPendingTasks(tasks);
    }

}