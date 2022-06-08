// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../constants/buttom_navigation.dart';
import '../widgets/00_home_screen/home_activity.dart';
import '../widgets/00_home_screen/home_current.dart';
import '../widgets/00_home_screen/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HomeHeader(),
          HomeCurrentPrograms(),
          HomeRecentActivities(),
          ButtomNavigation(),
        ],
      ),
    );
  }
}
