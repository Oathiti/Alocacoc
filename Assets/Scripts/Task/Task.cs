using UnityEngine;

[CreateAssetMenu(menuName = "Game/Task")]
public class Task : ScriptableObject
{
    public string description;

    public bool finish;

    public Task[] subTasks;

    public delegate void TaskHandler(Task task);
    public TaskHandler OnFinish;

    public void SetFinish(bool value = true)
    {
        this.finish = value;
        if (OnFinish != null)
            OnFinish(this);
    }

    void OnDisable()
    {
        #if UNITY_EDITOR
            // Prevent it resets value when reloading scripts
            if (UnityEngine.Application.isPlaying == false)
                this.finish = false;
        #endif
    }
}
