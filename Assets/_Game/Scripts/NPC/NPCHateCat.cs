using UnityEngine;
using System;
using System.Collections;

public class NPCHateCat : ReactToMeow
{

    public override void MeowReact(GameObject invoker)
    {
        invoker.GetComponent<Movement>().Scare();
        StartCoroutine(ScareCat());
    }

    IEnumerator ScareCat()
    {
        GetComponent<AIAnim>().encounterCat = true;
        yield return new WaitForSeconds(1f);
        GetComponent<AIAnim>().encounterCat = false;
    }

}