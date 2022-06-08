import 'presentation/screens/00_home_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/01_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fitness Tracker",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/details_screen': (context) => const DetailsScreen(),
      },
      initialRoute: '/',
    );
  }
}
