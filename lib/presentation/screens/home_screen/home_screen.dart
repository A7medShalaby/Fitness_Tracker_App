import 'package:flutter/material.dart';
import '../../constants/buttom_navigation.dart';

import 'widgets/home_activity.dart';
import 'widgets/home_current.dart';
import 'widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(),
          HomeCurrentPrograms(),
          HomeRecentActivities(),
          ButtomNavigation(),
        ],
      ),
    );
  }
}
