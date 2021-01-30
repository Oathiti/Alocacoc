using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreController : MonoBehaviour
{
    public float score;
    bool onCount;
    void Start()
    {
        StartScore();
    }

    public void StartScore()
    {
        StartCoroutine(CountScore());
    }

    public void EndScore()
    {
        onCount = false;
    }

    IEnumerator CountScore()
    {
        onCount = true;
        while (onCount)
        {
            score += Time.deltaTime;
            yield return null;
        }
    }
}
