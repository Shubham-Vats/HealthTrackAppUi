import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';
import 'goal_card.dart';
import 'workout_page.dart';


// ignore: camel_case_types
class Goals_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        bottomSheet: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            minWidth: context.screenWidth,
            height: 50.0,
            color: blueish,
            colorBrightness: Brightness.dark,
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Workout_Page(),
                )
              );
            }, 
            child: Text("Continue"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text("What are your Goals?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Text("Let us know what your goals are so that we can help you in achieving them",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GoalCard(
                    title: "HIIT",
                    subtitle: "Lose Weight",
                    icon: Icon(
                      Icons.calendar_today,
                      size: 50,
                    ),
                    isFilled: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GoalCard(
                    title:"BODYWEIGHT",
                    subtitle: "Be Tonned",
                    icon: Icon(
                      Icons.directions_walk,
                      size: 50,
                      color: Colors.white
                    ), 
                    isFilled: true, 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GoalCard(
                    title:"WEIGHTS",
                    subtitle: "Gain Muscle",
                    icon: Icon(
                      Icons.grain,
                      size: 50
                    ), 
                    isFilled: false, 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GoalCard(
                    title:"JOIN",
                    subtitle: "Be Fit",
                    icon: Icon(
                      Icons.group,
                      size: 50
                    ), 
                    isFilled: false, 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GoalCard(
                    title:"AT HOME",
                    subtitle: "Work Hard ",
                    icon: Icon(
                      Icons.hardware,
                      size: 50
                    ), 
                    isFilled: false, 
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}