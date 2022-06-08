import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        InfoStats(value: '345', unit: 'kCal', label: 'Calories'),
        InfoStats(value: '3.6', unit: 'km', label: 'Distance'),
        InfoStats(value: '1.5', unit: 'hr', label: 'Hours'),
      ],
    );
  }
}

class InfoStats extends StatelessWidget {
  final String value;
  final String unit;
  final String label;
  const InfoStats({
    Key? key,
    required this.value,
    required this.unit,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            text: value,
            style: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            children: [
              const TextSpan(text: ' '),
              TextSpan(
                text: unit,
                style: GoogleFonts.quicksand(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: GoogleFonts.quicksand(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
