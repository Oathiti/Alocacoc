using UnityEngine;
using UnityEngine.UI;

public class TimerUI : MonoBehaviour
{
    public Text textTime;

    private void Update()
    {
        textTime.text = ScoreController.score.ToString("0.00");
    }
}