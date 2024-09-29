import 'package:flutter/material.dart';
import 'package:todo_app/components/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6b79c0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 85),
            child: Text("Manage Your\n Daily TO DO", style: TextStyle(fontSize: 40),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 55),
            child: Container(
              height: 400,
              width: 300,
              // color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/welcome.png"))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1, left: 37),
            child: Text("Without much worry just manage\nthings as easy as piece of cake", style: TextStyle(fontSize: 20),),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80),
            child: RoundButton(title: "Create a Note", color: Color(0xffFFC00E))
          )
        ],
      ),
    );
  }
}
