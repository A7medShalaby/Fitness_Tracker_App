import 'package:flutter/material.dart';

class ButtomNavigation extends StatelessWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color(0xFFF8F8F8),
      child: IconTheme(
        data: IconThemeData(
          color: Color(0xffabadb4),
          size: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.add_chart),
            Icon(Icons.search),
            Transform.translate(
              offset: Offset(0, -15),
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(3, 3),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color(0xff92e2ff),
                        Color(0xff1ebdf8),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ),
            Icon(Icons.date_range),
            GestureDetector(
              child: Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, '/details_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
