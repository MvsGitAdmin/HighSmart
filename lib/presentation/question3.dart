


import 'package:deneme/presentation/viewmodel/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:deneme/presentation/question4.dart';


class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 3'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 150, // Adjust width according to your needs
            height: 150, // Adjust height according to your needs
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  counterGame1.value+=1;

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Question4()),
                  );
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

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Question4()),
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
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  counterGame1.value+=1;

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Question4()),
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

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Question4()),
                  );
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru1/d.png'),
                      // Replace this with your image path
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
