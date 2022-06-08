// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/models/fitness_program.dart';
import 'current_program.dart';

class HomeCurrentPrograms extends StatefulWidget {
  const HomeCurrentPrograms({Key? key}) : super(key: key);

  @override
  State<HomeCurrentPrograms> createState() => _HomeCurrentProgramsState();
}

class _HomeCurrentProgramsState extends State<HomeCurrentPrograms> {
  ProgramType active = fitnessProgram[0].type;

  void _changeProgram(ProgramType newType) {
    setState(() {
      active = newType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Current program title
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Programs',
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ],
          ),
        ),
        //Current program list
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: fitnessProgram.length,
            itemBuilder: (context, index) => CurrentProgram(
              program: fitnessProgram[index],
              active: fitnessProgram[index].type == active,
              onTap: _changeProgram,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 30),
          ),
        ),
      ],
    );
  }
}
