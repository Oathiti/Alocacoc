using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour
{

    public GameObject catCamera;

    public GameObject fadeIn;

    public string playScene;

    public void Play()
    {
        catCamera.SetActive(true);
        fadeIn.SetActive(true);
        StartCoroutine("GoToPlayScene");
    }

    protected IEnumerator GoToPlayScene()
    {
        yield return new WaitForSeconds(1.5f);
        SceneManager.LoadScene(playScene);
        yield return null;
    }
}
