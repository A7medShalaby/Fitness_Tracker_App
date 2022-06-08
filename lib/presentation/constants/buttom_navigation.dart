import 'package:flutter/material.dart';

class ButtomNavigation extends StatelessWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: const Color(0xFFF8F8F8),
      child: IconTheme(
        data: const IconThemeData(
          color: Color(0xffabadb4),
          size: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.add_chart),
            const Icon(Icons.search),
            Transform.translate(
              offset: const Offset(0, -15),
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(3, 3),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color(0xff92e2ff),
                        Color(0xff1ebdf8),
                      ],
                    ),
                  ),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ),
            const Icon(Icons.date_range),
            GestureDetector(
              child: const Icon(Icons.settings),
              onTap: () {
                // Navigator.pushNamed(context, '/details_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
