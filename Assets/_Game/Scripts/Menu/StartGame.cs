using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour
{
    public InputField nameInput;
    
    public GameObject loadingScreen;

    public GameObject catCamera;

    public GameObject fadeIn;

    public GameObject mainMenu;

    public string playScene;


    private void Start()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        Time.timeScale = 1;

    }

    public void Play()
    {
        catCamera.SetActive(true);
        fadeIn.SetActive(true);
        mainMenu.SetActive(false);
        StartCoroutine("GoToPlayScene");
    }

    protected IEnumerator GoToPlayScene()
    {
        if (loadingScreen)
            loadingScreen.SetActive(true);
        yield return new WaitForSeconds(1.5f);
        ScoreController.name = nameInput.text;
        SceneManager.LoadSceneAsync(playScene);
    }
}
