using UnityEngine;
using UnityEngine.Audio;

namespace Menu
{
    public class AudioVolume : MonoBehaviour
    {

        public AudioMixerGroup audioMixerGroup;

        public void SetVolume(float volume)
        {
            Debug.Log(audioMixerGroup.name);
            audioMixerGroup.audioMixer.SetFloat(audioMixerGroup.name, volume);
        }

    }
    
}
