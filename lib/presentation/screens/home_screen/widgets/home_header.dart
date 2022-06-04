// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          //Color
          CustomPaint(
            painter: _HeaderPainter(),
            size: Size(double.infinity, 200),
          ),
          //Menu_Icon
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          //Notification_Icon
          Positioned(
            top: 20,
            left: 70,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          //Profile_Picture
          Positioned(
            top: 20,
            right: 30,
            child: CircleAvatar(
              minRadius: 30,
              maxRadius: 40,
              foregroundImage: AssetImage("assets/images/profile_pic.jpg"),
            ),
          ),
          //Texts
          Positioned(
            left: 33,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: GoogleFonts.quicksand(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Ahmed Shalaby',
                  style: GoogleFonts.quicksand(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = Color(0xff18b0e8);
    Paint circles = Paint()..color = Colors.white.withAlpha(60);

    //Drawing the background
    canvas.drawRect(
        Rect.fromPoints(
          Offset(0, 0),
          Offset(size.width, size.height),
        ),
        backColor);

    //Drawing the circles
    canvas.drawCircle(Offset(size.width * 0.65, 10), 45, circles);
    canvas.drawCircle(Offset(size.width * 0.60, 130), 30, circles);
    canvas.drawCircle(Offset(size.width - 10, size.height - 18), 70, circles);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
