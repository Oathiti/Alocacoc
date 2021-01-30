using UnityEngine;

public class NPCHateCat : ReactToMeow
{

    public override void MeowReact(GameObject invoker)
    {  
        invoker.GetComponent<Movement>().Scare();
    }

}