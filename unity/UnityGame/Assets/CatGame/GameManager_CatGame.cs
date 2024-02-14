using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Scripting;

public class GameManager_CatGame : MonoBehaviour
{
    [SerializeField] List<GameObject> _levels = new();

    [SerializeField] List<GameObject> _sepetCats = new();

    int _levelIndex = 0;
    int _trueCount = 0;


    [SerializeField] int _level1TrueCount;
    [SerializeField] int _level2TrueCount;
    [SerializeField] int _level3TrueCount;
    [SerializeField] int _level4TrueCount;
    [SerializeField] int _level5TrueCount;
    [SerializeField] int _level6TrueCount;
    [SerializeField] int _level7TrueCount;
    [SerializeField] int _level8TrueCount;
    [SerializeField] int _level9TrueCount;

    [SerializeField] GameObject _nextLevelPanel;

    void Awake()
    {
        _levelIndex = 1;
    }

    public void PlayNextLevel()
    {
        foreach (var item in _sepetCats)
        {
            item.gameObject.SetActive(false);
        }

_trueCount= 0;
        _levelIndex++;
        foreach (var level in _levels)
        {
            level.gameObject.SetActive(_levelIndex == _levels.IndexOf(level) + 1);
        }
    }

    public void OnClickTrue()
    {
        _trueCount++;

        _sepetCats[_trueCount].SetActive(true);

        // Open Next Level Panel
        if(_levelIndex == 1)
        _nextLevelPanel.SetActive(_trueCount == _level1TrueCount);
        if(_levelIndex == 2)
        _nextLevelPanel.SetActive(_trueCount == _level2TrueCount); 
        if(_levelIndex == 3)
        _nextLevelPanel.SetActive(_trueCount == _level3TrueCount);
        if(_levelIndex == 4)
        _nextLevelPanel.SetActive(_trueCount == _level4TrueCount); 
        if(_levelIndex == 5)
        _nextLevelPanel.SetActive(_trueCount == _level5TrueCount); 
        if(_levelIndex == 6)
        _nextLevelPanel.SetActive(_trueCount == _level6TrueCount); 
        if(_levelIndex == 7)
        _nextLevelPanel.SetActive(_trueCount == _level7TrueCount);
         if(_levelIndex == 8)
        _nextLevelPanel.SetActive(_trueCount == _level8TrueCount); 
        if(_levelIndex == 9)
        _nextLevelPanel.SetActive(_trueCount == _level9TrueCount);
    }

}
