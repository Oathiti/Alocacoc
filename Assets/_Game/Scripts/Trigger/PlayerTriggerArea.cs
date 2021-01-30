using UnityEngine;
using UnityEngine.Events;

public class PlayerTriggerArea : MonoBehaviour
{
    public UnityEvent onEnter;

    public UnityEvent onExit;

    void OnTriggerEnter(Collider other)
    {
        if (isPlayer(other))
        {
            onEnter.Invoke();
        }
    }    

    void OnTriggerExit(Collider other)
    {
        if (isPlayer(other))
        {
            onExit.Invoke();
        }
    }    

    protected virtual bool isPlayer(Collider other)
    {
        // TODO: Implement check is player
        return true;
    }

}
