import 'package:flutter/cupertino.dart';

enum ProgramType {
  cardio,
  lifting,
  yoga,
  gym,
}

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String calories;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.calories,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessProgram = [
  FitnessProgram(
    image: const AssetImage('assets/images/cardio.jpg'),
    name: 'Cardio',
    calories: '220kCal',
    time: '20Min',
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: const AssetImage('assets/images/gym.jpg'),
    name: 'GYM',
    calories: '300kCal',
    time: '10Min',
    type: ProgramType.gym,
  ),
  FitnessProgram(
    image: const AssetImage('assets/images/lifting.jpg'),
    name: 'Lifting',
    calories: '350kCal',
    time: '30Min',
    type: ProgramType.lifting,
  ),
  FitnessProgram(
    image: const AssetImage('assets/images/yoga.jpg'),
    name: 'Yoga',
    calories: '100kCal',
    time: '50Min',
    type: ProgramType.yoga,
  ),
];
