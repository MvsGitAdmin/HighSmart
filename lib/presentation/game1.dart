import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';


class Game1 extends StatefulWidget {
  const Game1({Key? key}) : super(key: key);

  @override
  State<Game1> createState() => _Game1State();
}

class _Game1State extends State<Game1> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();
  UnityWidgetController? _unityWidgetController;

  @override
  void initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Unity Flutter Game 1'),
        ),
        body: Card(
          margin: const EdgeInsets.all(8),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: <Widget>[
              UnityWidget(
                onUnityUnloaded: onUnityUnloaded,
                onUnityCreated: onUnityCreated,
                onUnityMessage: onUnityMessage,
                onUnitySceneLoaded: onUnitySceneLoaded,
                fullscreen: false,
              ),

            ],
          ),
        ),
      ),
    );
  }

void onUnityUnloaded(){
    print("onUnityUnloaded called");
  }

  // Communication from Unity to Flutter
  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    print("onUnityCreated");
    _unityWidgetController = controller;
    _unityWidgetController?.postMessage("Canvas", "OnReceiveStringMessage", "LoadScene1");
  }

  // Communication from Unity when new scene is loaded to Flutter
  void onUnitySceneLoaded(SceneLoaded? sceneInfo) {
    print("sceneInfo:${sceneInfo}");

    if (sceneInfo != null) {
      print('Received scene loaded from unity: ${sceneInfo.name}');
      print(
          'Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
    }
  }
}
