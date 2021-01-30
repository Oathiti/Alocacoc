﻿using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour
{

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
        yield return new WaitForSeconds(1.5f);
        SceneManager.LoadScene(playScene);
        yield return null;
    }
}
