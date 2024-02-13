import 'package:deneme/presentation/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:deneme/presentation/question2.dart';
import 'package:deneme/presentation/viewmodel/counter_state.dart';


class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 150, // Adjust width according to your needs
            height: 250, // Adjust height according to your needs
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/soru1/1.png'),
                // Replace this with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Question2()),
                  );
                  counterGame1.value+=1;
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru1/a.png'),
                      // Replace this with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              GestureDetector(
                onTap: (){
                  counterGame1.value+=1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Question2()),
                  );
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru1/b.png'),
                      // Replace this with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  counterGame1.value+=1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Question2()),
                  );
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru1/c.png'),
                      // Replace this with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              GestureDetector(
                onTap: (){
                  counterGame1.value+=1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Question2()),
                  );
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru1/d.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
