using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseGame : MonoBehaviour
{
    public GameObject uiGame;
    public CanvasGroup canvasGroup;
    bool isPause;
    public void PauseResume()
    {
        uiGame.SetActive(isPause);
        Time.timeScale = (isPause = !isPause) ? 0 : 1;
        canvasGroup.blocksRaycasts = isPause;
        canvasGroup.alpha = isPause ? 1 : 0;
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            PauseResume();
        }
    }

    public void GoToMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void Exit()
    {
        Application.Quit();
    }
}
