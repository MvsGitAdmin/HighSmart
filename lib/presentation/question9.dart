import 'package:deneme/presentation/viewmodel/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:deneme/presentation/question2.dart';



class Question9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 9'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 200, // Adjust width according to your needs
            height: 200, // Adjust height according to your needs
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/soru8/8.png'),
                // Replace this with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  counterGame2.value+=1;
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru9/a.png'),
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
                  counterGame2.value+=1;

                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru9/b.png'),
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
            children: [
              GestureDetector(
                onTap: (){
                  counterGame2.value+=1;

                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru9/c.png'),
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
                  counterGame2.value+=1;
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Container(
                  width: 100, // Adjust width according to your needs
                  height: 100, // Adjust height according to your needs
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/soru9/d.png'),
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
