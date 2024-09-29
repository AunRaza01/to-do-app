import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Text(
              "Have a greate day",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 25),
            Text(
              "My Priority Task",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: height*0.23,
                    width: width*0.35,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100, top: 20),
                            child: Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "2 hours ago",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: height*0.01,
                          ),
                          Text(
                            "Mobile App\nUI Design",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: height*0.01,
                          ),
                          Text(
                            "Using figma\nothes Tools",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffA6A6A6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Container(
                  height: height*0.23,
                    width: width*0.35,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 20),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "4 hours ago",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),
                        Text(
                          "Capture Sun\nRise Shots",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),
                        Text(
                          "Complete Guru\nShot Challenge",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffA6A6A6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.04,
            ),
            Row(
              children: [
                Text(
                  "My Tasks",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height:height*0.01,
                ),
              ],
            ),
            SizedBox(
              height:height*0.01,
            ),
            Row(
              children: [
                Text(
                  "Today's Task",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: width*0.02,
                ),
                Text("Weekly Task",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(
                  width: width*0.02,
                ),
                Text("Monthly Task", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(
              height: height*0.015
            ),
            Container(
              height: height*0.056,
              width: width*379,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Complete Assigment # 02"),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 17,
                              width: 50,
                              child: Center(
                                  child: Text(
                                "To do",
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Color(0xff254069),
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          ],
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Row(
                            
                            children: [
                              Icon(Icons.calendar_month),
                              Text("28/09/2024"),
                              Icon(Icons.flag_rounded),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.more_vert, size: 23,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(height: height*0.025,),
            Container(
               height: height*0.056,
              width: width*379,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("Submit Fee Challan"),
                            ),
                            SizedBox(
                              width: width*0.01,
                            ),
                            Container(
                              height: height*0.02,
                              width: width*0.09,
                              child: Center(
                                  child: Text(
                                "Done",
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Color(0xff69F851),
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          ],
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Row(
                            
                            children: [
                              Icon(Icons.calendar_month),
                              Text("18/09/2024"),
                              Icon(Icons.flag_rounded),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.more_vert, size: 23,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
