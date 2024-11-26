import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final VoidCallback onTap;
  final VoidCallback settingTapped;
  final int timeSpent;
  final int timeGoal;
  final bool habitisStarted;

  const HabitTile({
    Key? key,
    required this.habitName,
    required this.onTap,
    required this.settingTapped,
    required this.timeSpent,
    required this.timeGoal,
    required this.habitisStarted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate progress percentage
    double progress = (timeGoal == 0) ? 0.0 : (timeSpent / timeGoal).clamp(0.0, 1.0);

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
            // Circular Percent Indicator with Play Icon
            GestureDetector(
              onTap: onTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 30.0,
                    lineWidth: 5.0,
                    percent: progress,
                    progressColor: habitisStarted ? Colors.green : Colors.grey,
                    backgroundColor: Colors.grey[300]!,
                  ),
                  Icon(
                    habitisStarted ? Icons.pause : Icons.play_arrow,
                    size: 30,
                    color: habitisStarted ? Colors.green : Colors.grey,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            // Column for Habit Name and Progress
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  habitName,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  timeSpent.toString() + " / " + timeGoal.toString() + " mins",
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),

            // Settings Icon
            GestureDetector(
              onTap: settingTapped,
              child: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
