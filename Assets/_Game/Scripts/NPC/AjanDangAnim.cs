using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AjanDangAnim : MonoBehaviour
{
    Animator anim;
    bool idleAnimChoose;
    float timer;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        idleAnimChoose = (Random.value > 0.5f);
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;
        if (timer > 6f)
        {
            anim.Play("krasharkjai");
            StartCoroutine(DelayTime());
        }
        else
        {
            if (GetComponent<NavMeshAgent>().isStopped)
            {
                if (idleAnimChoose)
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

    IEnumerator DelayTime()
    {
        yield return new WaitForSeconds(2f);
        timer = 0;
    }
}
