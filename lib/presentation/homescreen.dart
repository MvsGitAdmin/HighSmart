import 'package:deneme/presentation/game4.dart';
import 'package:deneme/presentation/game5.dart';
import 'package:deneme/presentation/game8.dart';
import 'package:deneme/presentation/game9.dart';
import 'package:deneme/presentation/question1.dart';
import 'package:deneme/presentation/question2.dart';
import 'package:deneme/presentation/question6.dart';
import 'package:deneme/presentation/viewmodel/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'game1.dart';
import 'game10.dart';
import 'game2.dart';
import 'game3.dart';
import 'game6.dart';
import 'game7.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                  valueListenable: counterGame1,
                  builder: (context, value, child) {
                    return ElevatedButton(
                        onPressed: counterGame1.value >= 4
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Game1()),
                                );
                              }
                            : null,
                        child: Text("Go to Game1"));
                  }),
              SizedBox(
                width: 50,
              ),
              ValueListenableBuilder(
                valueListenable: counterGame2,
                builder: (context, value, child) {
                  return ElevatedButton(
                      onPressed: counterGame2.value >=4?() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game2()),
                        );
                      }:null,
                      child: Text("Go to Game2"));
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game3()),
                    );
                  },
                  child: Text("Go to Game3")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game4()),
                    );
                  },
                  child: Text("Go to Game4")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game5()),
                    );
                  },
                  child: Text("Go to Game5")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game6()),
                    );
                  },
                  child: Text("Go to Game6")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game7()),
                    );
                  },
                  child: Text("Go to Game7")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game8()),
                    );
                  },
                  child: Text("Go to Game 8")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game9()),
                    );
                  },
                  child: Text("Go to Game9")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game10()),
                    );
                  },
                  child: Text("Go to Game 10")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Question1()),
                    );
                  },
                  child: Text("1 ci tipi Sorulara git")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Question6()),
                    );
                  },
                  child: Text("2 ci tipi Sorulara git")),
            ],
          ),
        ],
      ),
    );
  }
}
