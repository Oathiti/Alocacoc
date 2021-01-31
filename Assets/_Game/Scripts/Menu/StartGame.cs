using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour
{
    public GameObject loadingScreen;

    public GameObject catCamera;

    public GameObject fadeIn;

    public GameObject mainMenu;

    public string playScene;


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
        SceneManager.LoadSceneAsync(playScene);
    }
}
