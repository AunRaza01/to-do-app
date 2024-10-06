import 'package:flutter/material.dart';
import 'package:todo_app/components/round_button.dart';
import 'package:todo_app/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6b79c0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 70),
              child: Text(
                "Manage Your\n Daily TO DO",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 30),
              child: Container(
                height: 300,
                width: 250,
                // color: Colors.red,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/welcome.png"))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Without much worry just manage\nthings as easy as piece of cake",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: RoundButton(
                        title: "Create a Note", color: const Color(0xffFFC00E))))
          ],
        ),
      ),
    );
  }
}
