import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsStats extends StatelessWidget {
  const DetailsStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.pie_chart_rounded,
                size: 20,
                color: Color(0xff18b0e8),
              ),
              const SizedBox(width: 8),
              Text(
                'Workout Stats',
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 30),
                InfoStats(
                  icon: Icons.timer_outlined,
                  iconColor: Color(0xff535bed),
                  iconBackground: Color(0xffe4e7ff),
                  time: '+5s',
                  label: "Time",
                  value: '30:34',
                ),
                SizedBox(width: 15),
                InfoStats(
                  icon: Icons.favorite_outline,
                  iconColor: Color(0xffe11e6c),
                  iconBackground: Color(0xffffe4fb),
                  time: '+5s',
                  label: "Heart Rate",
                  value: '151 BPM',
                ),
                SizedBox(width: 15),
                InfoStats(
                  icon: Icons.bolt_outlined,
                  iconColor: Color(0xffd3b50f),
                  iconBackground: Color(0xfffb4be4),
                  time: '+5s',
                  label: "Energy",
                  value: '169 kCal',
                ),
                SizedBox(width: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoStats extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String time;
  final String label;
  final String value;
  const InfoStats({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    required this.time,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffe1e1e1),
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      child: Stack(
        children: [
          StatsIcon(
            icon: icon,
            iconColor: iconColor,
            backgroundColor: iconBackground,
          ),
          StatsChange(time: time),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  value,
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Text(label),
          // Text(value),
        ],
      ),
    );
  }
}

class StatsChange extends StatelessWidget {
  const StatsChange({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(500),
        ),
        child: Text(
          time,
          style: GoogleFonts.quicksand(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class StatsIcon extends StatelessWidget {
  const StatsIcon({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Icon(icon, size: 15, color: iconColor),
    );
  }
}
