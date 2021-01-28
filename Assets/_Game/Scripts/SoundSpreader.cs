using UnityEngine;

public class SoundSpreader : MonoBehaviour
{
    public SphereCollider sphere;
    public float maxDistance = 0f;
    public float speed = 1f;

    void OnEnable()
    {
        sphere.GetComponent<SphereCollider>();
        this.tag = "sound";
    }

    void Update()
    {
        if (!sphere) return;

        if (sphere.radius < maxDistance)
        {
            sphere.radius += speed * Time.deltaTime;
        } 
        else 
        {
            Destroy(this.gameObject);
        }
    }
   
    public static void SpawnSound(Vector3 position, float maxDistance)
    {
        var go = new GameObject();
        go.tag = "sound";
        go.transform.position = position;

        var collider = go.AddComponent<SphereCollider>();
        collider.radius = 0.001f;
        collider.isTrigger = true;

        var sound = go.AddComponent<SoundSpreader>();
        sound.sphere = collider;
    }

}
