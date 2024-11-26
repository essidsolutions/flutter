import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class HabitTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Circular Percent Indicator
           CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: new Text("100%"),
                  progressColor: Colors.green,
                ),
            
            // Column for Habit Name and Progress
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Exercise",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "Progress: 50%",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            
            // Settings Icon
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
}
