import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'activity_item.dart';

class HomeRecentActivities extends StatelessWidget {
  const HomeRecentActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Activity title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activities',
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => ActivityItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
