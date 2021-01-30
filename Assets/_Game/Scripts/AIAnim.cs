using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class AIAnim : MonoBehaviour
{
    Animator anim;
    bool idleAnimChoose;
    public bool encounterCat;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        idleAnimChoose = (Random.value > 0.5f);
        encounterCat = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (encounterCat)
        {
            anim.Play("CatEn");
        }
        else
        {
            if(GetComponent<NavMeshAgent>().isStopped)
            {
                if(idleAnimChoose)
                    anim.Play("Idle1");
                else
                    anim.Play("Idle2");
            }
            else
            {
                anim.Play("Walk");
            }
        }
    }
}
