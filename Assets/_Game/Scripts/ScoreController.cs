using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreController : MonoBehaviour
{
    public Text myScoreText;
    public List<Text> scoreText;

    public float score;

    public List<float> topScore;

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
        LoadScore();
        onCount = false;

        topScore.Add(score);
        topScore.Sort();
        SaveScore();
    }

    void LoadScore()
    {
        for (int i = 0; i < 3; i++)
        {
            topScore.Add(PlayerPrefs.GetFloat("Rank" + i, 0));
        }
    }

    void SaveScore()
    {
        for (int i = 0; i < 3; i++)
        {
            PlayerPrefs.SetFloat("Rank" + i,topScore[i]);
        }
    }

    public void ShowScore()
    {
        EndScore();

        for (int i = 0; i < scoreText.Count; i++)
        {
            scoreText[i].text = topScore[i].ToString("F2");
        }
        myScoreText.text = score.ToString("F2");
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
