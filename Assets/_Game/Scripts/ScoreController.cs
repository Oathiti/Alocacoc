using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ScoreController : MonoBehaviour
{
    public List<Text> scoreText;
    public List<Text> nameText;

    public static float score = 0;
    public static string name = "";

    public List<(float score, string name)> topScore = new List<(float score, string name)>();
    public GameObject go;
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

    }

    void LoadScore()
    {
        for (int i = 0; i < 4; i++)
        {
            topScore.Add((PlayerPrefs.GetFloat("RankScore" + i, 0), PlayerPrefs.GetString("RankName" + i, "")));
            //topName.Add();
        }
    }

    void SaveScore()
    {
        for (int i = 0; i < 4; i++)
        {
            PlayerPrefs.SetFloat("RankScore" + i, topScore[i].score);
            PlayerPrefs.SetString("RankName" + i, topScore[i].name);
        }
    }

    public void ShowScore()
    {
        LoadScore();
        onCount = false;

        topScore.Add((score, name));
        //topScore = topScore.OrderBy(o => o.score > 0f).ToList();
        var select = topScore.OrderBy(o => o.score).Where(s => s.score > 0).ToArray();
        SaveScore();
        go.SetActive(true);
        for (int i = 0; i < scoreText.Count; i++)
        {
            scoreText[i].text = (select.Length > i ? select[i].score : 0).ToString("0.00");
            nameText[i].text = topScore[i].name;
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
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && go.activeInHierarchy)
        {
            SceneManager.LoadScene("MainMenu");
        }
    }
}
