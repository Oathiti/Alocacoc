using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameUtility;

public class GameManager : MonoBehaviour
{
    public GameObject[] goodGuy;
    public GameObject[] badGuy;

    public Transform[] pointSpawn;

    public int minimumSpawn;
    public int badGuylimit;
    int badGuyCount = 0;

    public FollowerList followerList;

    void Start()
    {
        followerList.onCount = (c) =>
          {
              if (c == goodGuy.Length)
                  ShowScore();
          };
        goodGuy = goodGuy.SwapArray();
        pointSpawn = pointSpawn.SwapArray();

        for (int i = 0; i < goodGuy.Length; i++)
        {
            Instantiate(goodGuy[i], pointSpawn[i].position, goodGuy[i].transform.rotation);
        }
        for (int i = 0; i < goodGuy.Length; i++)
        {
            Instantiate(badGuy[Random.Range(0, badGuy.Length)], pointSpawn[i + goodGuy.Length].position, goodGuy[i].transform.rotation);
            badGuyCount++;
        }
        StartCoroutine(SpawnBadGuy());
    }
    IEnumerator SpawnBadGuy()
    {
        while (badGuyCount < badGuylimit)
        {
            yield return new WaitForSeconds(5f);
            int i;
            Instantiate(badGuy[i = Random.Range(0, badGuy.Length)], pointSpawn[Random.Range(0, pointSpawn.Length)].position, goodGuy[i].transform.rotation);
        }
    }

    void ShowScore()
    {

    }
}
