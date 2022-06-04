import 'package:fitness_tracker_app/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/screens/details_screen/details_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/details_screen': (context) => DetailsScreen(),
      },
      initialRoute: '/details_screen',
    );
  }
}
