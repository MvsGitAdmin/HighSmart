import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';


class Game5 extends StatefulWidget {
  const Game5({Key? key}) : super(key: key);

  @override
  State<Game5> createState() => _Game5State();
}

class _Game5State extends State<Game5> {
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
          title: const Text('Unity Flutter Game Scene 5'),
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









  void onUnitySceneLoaded(SceneLoaded? scene) {
    if (scene != null) {
      print('Received scene loaded from unity: ${scene.name}');
    } else {
      print('Received scene loaded from unity: null');
    }
  }


  // Communication from Unity to Flutter
  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    print("onUnityCreated called");
    _unityWidgetController = controller;
    _unityWidgetController?.postMessage("Canvas", "OnReceiveStringMessage", "LoadScene5");
  }

}