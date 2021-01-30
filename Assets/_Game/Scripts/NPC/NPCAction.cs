using UnityEngine;

public abstract class NPCAction : MonoBehaviour
{

    public bool isRunning;
    
    public abstract void StartAction();

    public abstract void EndAction();
}