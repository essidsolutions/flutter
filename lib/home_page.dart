import 'package:flutter/material.dart';
import 'package:habittracker/util/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Consistency is a key"),
        centerTitle: false,
      ),
      body: Column (children: [
        HabitTile(),
         HabitTile(),HabitTile()
      ],)
    );
  }
}
