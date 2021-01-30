using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreController : MonoBehaviour
{
    public Text scoreText;

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

    public void ShowScore()
    {
        EndScore();
        scoreText.text = score.ToString();
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
