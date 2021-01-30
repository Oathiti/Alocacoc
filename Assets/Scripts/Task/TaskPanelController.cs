using System.Collections.Generic;
using UnityEngine;

public class TaskPanelController : MonoBehaviour
{
    private static TaskPanelController _instance;
    public static TaskPanelController instance
    {
        get {
            return _instance;
        }
        private set {
            _instance = value;
        }
    }
    
    public List<Task> currentTasks = new List<Task>();

    public List<Task> pendingAdd = new List<Task>();

    public GameObject taskUIPrefab;

    void OnEnable()
    {
        if (instance && instance != this) {
            Destroy(this);
            return;
        }

        instance = this;

        if(isCurrentTasksFinished())
        {
            MovePendingToCurrentTasks();
        }
    }

    void OnDisable()
    {
        for(var i = currentTasks.Count - 1; i >= 0; i--)
        {
            RemoveCurrentTask(currentTasks[i]);
        }
    }

    protected void AddCurrentTask(Task task)
    {
        if (currentTasks.Contains(task)) return;

        currentTasks.Add(task);
        task.OnFinish += OnTaskFinish;
    }

    protected void RemoveCurrentTask(Task task)
    {
        currentTasks.Remove(task);
        task.OnFinish -= OnTaskFinish;
    }

    public void AddPendingTasks(Task[] tasks)
    {
        foreach(var task in tasks)
        {
            if (!pendingAdd.Contains(task) && !currentTasks.Contains(task))
                pendingAdd.Add(task);
        }

        if (isCurrentTasksFinished())
        {
            MovePendingToCurrentTasks();
        }
    }

    public void SetCurrentTasks(Task[] newTasks)
    {
        ClearCurrentTasks();

        foreach(var tast in newTasks)
        {
            AddCurrentTask(tast);
        }
    }

    public void ClearCurrentTasks()
    {
        if (currentTasks.Count <= 0) return;

        for(int i = currentTasks.Count - 1; i >= 0; i--)
        {
            RemoveCurrentTask(currentTasks[i]);
        }
    }

    public void MovePendingToCurrentTasks(bool clearCurrent = true)
    {
        if (clearCurrent)
        {
            ClearCurrentTasks();
        }

        foreach(var task in pendingAdd)
        {
            AddCurrentTask(task);
        }

        pendingAdd.Clear();
    }

    public void OnTaskFinish(Task finishedTask)
    {
        if(isCurrentTasksFinished())
        {
            MovePendingToCurrentTasks();
        }
    }

    public bool isCurrentTasksFinished()
    {
        foreach(var task in currentTasks)
        {
            if(task.finish == false)
                return false;
        }

        return true;
    }

}
