import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Color(0xff6b79c0),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Padding(
              padding: const EdgeInsets.only(top: 60, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome To Notes",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.JPG")),
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Padding(
              padding: const EdgeInsets.only( right: 260),
              child: TextFormField(
                
                
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
