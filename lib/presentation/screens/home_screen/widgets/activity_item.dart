// ignore_for_file: unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key}) : super(key: key);
  static const activities = [
    'GYM',
    'YOGA',
    'LIFTING',
    'CARDIO',
    'CYCLING',
    'SWIMMING',
    'RUNNING',
    'WALKING',
    'BICYCLING',
    'ROWING',
    'HIKING',
    'JUMPING',
    'BOXING',
  ];

  @override
  Widget build(BuildContext context) {
    String activity = activities[Random().nextInt(activities.length)];
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details_screen');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFe1e1e1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            //Activity Circular Icon
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffcff2ff),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/yoga.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            //Activity Type
            Text(
              activity,
              style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Spacer(),
            //Time Icon
            Icon(
              Icons.timer_outlined,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(width: 2),
            //Time Text
            Text(
              '30Min',
              style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 20),
            //Calories Icon
            Icon(
              Icons.wb_sunny_outlined,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(width: 2),
            //Calories Text
            Text(
              '55kCal',
              style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
