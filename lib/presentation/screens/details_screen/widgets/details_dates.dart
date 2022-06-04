// ignore_for_file: unused_local_variable

import 'package:fitness_tracker_app/data/models/days_of_week.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsDates extends StatelessWidget {
  const DetailsDates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBoxes = [];
    DateTime date = DateTime.now().subtract(Duration(days: 3));
    for (int i = 0; i < 7; i++) {
      dateBoxes.add(
        DateBox(date: date, active: i == 3),
      );
      date = date.add(Duration(days: 1));
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dateBoxes,
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;
  const DateBox({
    Key? key,
    this.active = false,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: active
            ? LinearGradient(
                colors: [
                  Color(0xff92e2ff),
                  Color(0xff1ebdf8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 5,
          ),
        ],
        border: Border.all(
          color: Color(0xffe1e1e1),
        ),
      ),
      child: DefaultTextStyle.merge(
        style: active ? TextStyle(color: Colors.white) : null,
        child: Column(
          children: [
            Text(
              daysOfWeek[date.weekday]!,
              style: GoogleFonts.quicksand(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              date.day.toString().padLeft(2, '0'),
              style: GoogleFonts.quicksand(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
