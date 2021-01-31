using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreController : MonoBehaviour
{
    public List<Text> scoreText;
    public List<Text> nameText;

    public static float score = 0;
    public static string name = "";

    public List<float> topScore;
    public List<string> topName;

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
        topName.Add(name);
        topScore.Sort();
        topName.Sort();
        SaveScore();
    }

    void LoadScore()
    {
        for (int i = 0; i < 4; i++)
        {
            topScore.Add(PlayerPrefs.GetFloat("RankScore" + i, 0));
            topName.Add(PlayerPrefs.GetString("RankName" + i, ""));
        }
    }

    void SaveScore()
    {
        for (int i = 0; i < 4; i++)
        {
            PlayerPrefs.SetFloat("RankScore" + i,topScore[i]);
            PlayerPrefs.SetString("RankName" + i, topName[i]);
        }
    }

    public void ShowScore()
    {
        EndScore();

        for (int i = 0; i < scoreText.Count; i++)
        {
            scoreText[i].text = topScore[i].ToString("F2");
            nameText[i].text = topName[i];
        }
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
