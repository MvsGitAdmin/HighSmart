using System;
using System.Collections;
using System.Collections.Generic;
using FlutterUnityIntegration;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneNavigator : MonoBehaviour
{
    UnityMessageManager _unityMessageManager;


    private void OnReceiveStringMessage(string message)
    {
        print(message);

        if (message == "LoadScene1")
        {
            SceneManager.LoadScene("Scene_01");
            print("sahne 1 called");
        }
        else if (message == "LoadScene2")
        {
            SceneManager.LoadScene("Scene_02");
            print("sahne 2 called");
        }
           else if (message == "LoadScene3")
        {
            SceneManager.LoadScene("Scene_03");
            print("sahne 3 called");
        }
         else if (message == "LoadScene4")
        {
            SceneManager.LoadScene("Scene_04");
            print("sahne 3 called");
        }
         else if (message == "LoadScene5")
        {
            SceneManager.LoadScene("Scene_05");
            print("sahne 3 called");
        }
        
         else if (message == "LoadScene6")
        {
            SceneManager.LoadScene("Scene_06");
            print("sahne 3 called");
        }
        else if (message == "LoadScene7")
        {
            SceneManager.LoadScene("Scene_07");
            print("sahne 3 called");
        }
        else if (message == "LoadScene8")
        {
            SceneManager.LoadScene("Scene_08");
            print("sahne 3 called");
        }
        else if (message == "LoadScene9")
        {
            SceneManager.LoadScene("Scene_09");
            print("sahne 3 called");
        }
        else if (message == "LoadScene10")
        {
            SceneManager.LoadScene("Scene_10");
            print("sahne 3 called");
        }
    }


    private void Awake()
    {
        _unityMessageManager = GetComponent<UnityMessageManager>();
        print("awake calisti");
    }

    void OnEnable()
    {
        print("OnEnable ");
        _unityMessageManager.OnFlutterMessage += OnReceiveFlutterMessage;
        _unityMessageManager.OnMessage += OnReceiveStringMessage;
    }

    void OnDisable()
    {
        print("OnDisable ");
        _unityMessageManager.OnFlutterMessage -= OnReceiveFlutterMessage;
        _unityMessageManager.OnMessage -= OnReceiveStringMessage;
    }

    private void OnReceiveFlutterMessage(MessageHandler handler)
    {
        print("OnReceiveFlutterMessage ");
    }
}
