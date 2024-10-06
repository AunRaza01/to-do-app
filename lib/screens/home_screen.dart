import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List to store tasks
  List<Map<String, String>> todoTaskList = [];

  // Function to add a new task to the list
  void addToDo(Map<String, String> newTask) {
    // Only add the task if both title and description are not empty
    if (newTask['title']!.isNotEmpty && newTask['description']!.isNotEmpty) {
      setState(() {
        todoTaskList.add(newTask);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive design
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff6b79c0),
      body: SafeArea( // Ensures content is within safe areas like notches
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start (left)
            children: [
              SizedBox(height: height * 0.04), // Add vertical space

              // Header Row: "Welcome To Notes" and Profile Avatar
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between elements
                children: [
                  Text(
                    "Welcome To Notes",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Ensure text is visible on background
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.JPG"),
                  ),
                ],
              ),

              SizedBox(height: height * 0.02), // Add vertical space

              // Greeting Text
              const Text(
                "Have a great day",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),

              SizedBox(height: height * 0.025), // Add vertical space

              // Section Title: "My Priority Task"
              const Text(
                "My Priority Task",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),

              SizedBox(height: height * 0.01), // Add vertical space

              // Priority Task Cards Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First Priority Task Card
                  Container(
                    height: height * 0.3,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: const Color(0xffA6A6A6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                        children: [
                          const Icon(
                            Icons.mobile_friendly,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "2 hours ago",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "Mobile App\nUI Design",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "Using Figma\nother Tools",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Second Priority Task Card
                  Container(
                    height: height * 0.3,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: const Color(0xffA6A6A6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                        children: [
                          const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "4 hours ago",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "Capture Sun\nRise Shots",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            "Complete Guru\nShot Challenge",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.04), // Add vertical space

              // "My Tasks" Header with Add Button
              Row(
                children: [
                  const Text(
                    "My Tasks",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(), // Push the add button to the end
                  InkWell(
                    onTap: () async {
                      // Navigate to AddScreen and wait for the result
                      final newTask = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AddScreen()),
                      );

                      // If a task was returned, add it to the list
                      if (newTask != null && newTask is Map<String, String>) {
                        addToDo(newTask);
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.01), // Add vertical space

              // Task Categories Row
              Row(
                children: [
                  const Text(
                    "Today's Task",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  const Text(
                    "Weekly Task",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  const Text(
                    "Monthly Task",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.015), // Add vertical space

              // **Expanded Widget Wrapping ListView.builder**
              Expanded(
                child: todoTaskList.isEmpty
                    ? const Center(
                        child: Text(
                          "No tasks added yet!",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      )
                    : ListView.builder(
                        itemCount: todoTaskList.length,
                        itemBuilder: (context, index) {
                          final task = todoTaskList[index];
                          return Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                              children: [
                                // Task Title and Delete Icon
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      task["title"] ?? "",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete, color: Colors.red),
                                      onPressed: () {
                                        // Remove the task from the list
                                        setState(() {
                                          todoTaskList.removeAt(index);
                                        });
                                      },
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10), // Add vertical space

                                // Task Time
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today, size: 16),
                                    const SizedBox(width: 5),
                                    Text(task["startTime"] ?? ""),
                                    const SizedBox(width: 5),
                                    const Text(" - "),
                                    const SizedBox(width: 5),
                                    Text(task["endTime"] ?? ""),
                                  ],
                                ),

                                const SizedBox(height: 10), // Add vertical space

                                // Task Description
                                Text(
                                  task["description"] ?? "",
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
