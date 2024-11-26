import 'package:flutter/material.dart';
import 'package:habittracker/util/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List habitList = [
    ["Exercise", false, 0, 10],
    ["Reading", false, 0, 20],
    ["Meditation", false, 0, 30],
    ["Coding", false, 0, 40],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Consistency is the Key",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: habitList.length,
        itemBuilder: (context, index) {
          return HabitTile(
            habitName: habitList[index][0],
            habitisStarted: habitList[index][1],
            timeSpent: habitList[index][2],
            timeGoal: habitList[index][3],
            onTap: () {
              setState(() {
                habitList[index][1] = !habitList[index][1];
              });
            },
            settingTapped: () {
              print("Setting Tapped for ${habitList[index][0]}");
            },
          );
        },
      ),
    );
  }
}
