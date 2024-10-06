import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({
    super.key,
  });

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: const Color(0xff6b79c0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              const Row(
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
              SizedBox(
                height: height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("From"),
                  Text("To"),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.03,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      controller: startTimeController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(height * 0.01),
                        hintText: "10:30 AM",
                        hintStyle: const TextStyle(fontSize: 12),
                        isDense: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.03,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      controller: endTimeController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(height * 0.01),
                        hintText: "04:30 PM",
                        hintStyle: const TextStyle(fontSize: 12),
                        isDense: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.09,
              ),
              const Text(
                "Title",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(height * 0.01),
                    border: InputBorder.none,
                    hintText: "Enter Title",
                    fillColor: const Color(0xffFFFFFF),
                    filled: true),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Container(
              //   height: _height * 0.1,
              //   width: _width * 0.7,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(10)),
              // ),
              TextFormField(
                controller: descriptionController,
                maxLines: 3,
                decoration: const InputDecoration(
                    hintText: "Description",
                    fillColor: Color(0xffffffff),
                    filled: true),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              const Text(
                "Choose Priority",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.03,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "High",
                      style: TextStyle(fontSize: 11),
                    )),
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  Container(
                    height: height * 0.03,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "High",
                      style: TextStyle(fontSize: 11),
                    )),
                  ),
                  SizedBox(
                    width: width * 0.17,
                  ),
                  Container(
                    height: height * 0.03,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        color: const Color(0xff79AF92),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "High",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.15,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    // Pass the input data back to HomeScreen
                    Navigator.pop(context, {
                      "title": titleController.text.toString(),
                      "description": descriptionController.text.toString(),
                      "startTime": startTimeController.text.toString(),
                      "endTime": endTimeController.text.toString(),
                    });
                  },
                  child: Container(
                    height: height * 0.053,
                    width: width * 0.37,
                    decoration: BoxDecoration(
                        color: const Color(0xff79AF92),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "Add",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
