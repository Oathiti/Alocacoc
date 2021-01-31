using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCSignal : MonoBehaviour
{
    public GameObject smoke;
    [SerializeField]float timer;
    // Start is called before the first frame update
    void Start()
    {
        timer = 0f;
    }

    // Update is called once per frame
    void Update()
    {
        timer += Time.deltaTime;
        if (timer > 10f) StartCoroutine(SpawnSmoke());
    }

    IEnumerator SpawnSmoke()
    {
        timer = 0f;
        smoke.SetActive(true);
        yield return new WaitForSeconds(2f);
        smoke.SetActive(false);
        
    }
}
