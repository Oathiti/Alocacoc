﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameUtility;
using UnityEngine.Events;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    public GameObject[] goodGuy;
    public GameObject[] badGuy;

    public Transform[] pointSpawn;

    public int minimumSpawn;
    public int badGuylimit;
    int badGuyCount = 0;

    public FollowerList followerList;
    public UnityEvent finishGame;

    public AudioClip playBGM;
    public AudioClip scoreBGM;

    public Text ppl;

    void Start()
    {

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        GetComponent<AudioSource>().clip = playBGM;
        GetComponent<AudioSource>().Play();

        followerList.onCount = (c) =>
          {
              ppl.text = c + "/9";
              if (c == goodGuy.Length)
                  ShowScore();
          };
        goodGuy = goodGuy.SwapArray();
        pointSpawn = pointSpawn.SwapArray();

        for (int i = 0; i < goodGuy.Length; i++)
        {
            Instantiate(goodGuy[i], pointSpawn[i].position, goodGuy[i].transform.rotation).name = "NPC_Good";
        }
        //for (int i = 0; i < minimumSpawn; i++)
        //{
        //    int ii;
        //    Instantiate(badGuy[ii = Random.Range(0, badGuy.Length)], pointSpawn[i + goodGuy.Length].position, badGuy[ii].transform.rotation).name = "NPC_Bad";
        //    badGuyCount++;
        //}
        StartCoroutine(SpawnBadGuy());
    }
    IEnumerator SpawnBadGuy()
    {
        while (badGuyCount < badGuylimit)
        {
            yield return new WaitForSeconds(badGuyCount < minimumSpawn ? .1f : 5f);
            int i;
            Instantiate(badGuy[i = Random.Range(0, badGuy.Length)], pointSpawn[Random.Range(0, pointSpawn.Length)].position, goodGuy[i].transform.rotation);
            badGuyCount++;
        }
    }

    void ShowScore()
    {
        finishGame?.Invoke();
        GetComponent<AudioSource>().clip = scoreBGM;
        GetComponent<AudioSource>().Play();
    }
}
