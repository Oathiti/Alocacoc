using UnityEngine;

public class Credit : MonoBehaviour
{

    public GameObject mainCamera;

    public GameObject creditCamera;

    public GameObject mainMenuUI;

    public GameObject creditUI;

    public Animation creditFadeAnimation;

    public Animation credtScrollAnimation;

    public void ShowCredit()
    {
        mainCamera.SetActive(false);
        creditCamera.SetActive(true);
        creditUI.SetActive(true);
        mainMenuUI.SetActive(false);

        creditFadeAnimation.Play();
        credtScrollAnimation.Play();
    }

    public void HideCredit()
    {
        mainCamera.SetActive(true);
        creditCamera.SetActive(false);
        creditUI.SetActive(false);
        mainMenuUI.SetActive(true);
    }

    void Update()
    {
        if(Input.GetKey(KeyCode.Escape))
        {
            HideCredit();
        }
    }

}
