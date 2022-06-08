import 'package:flutter/material.dart';

import '../constants/buttom_navigation.dart';
import '../widgets/01_details_screen/details_appbar.dart';
import '../widgets/01_details_screen/details_dates.dart';
import '../widgets/01_details_screen/details_graph.dart';
import '../widgets/01_details_screen/details_info.dart' hide InfoStats;
import '../widgets/01_details_screen/details_stats.dart';
import '../widgets/01_details_screen/details_steps.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DetailsAppBar(appBar: AppBar()),
      body: Column(
        children: const [
          DetailsDates(),
          DetailsSteps(),
          DetailsGraph(),
          DetailsInfo(),
          Divider(
            thickness: 2,
            color: Color(0xff18b0e8),
          ),
          DetailsStats(),
          SizedBox(height: 30),
          ButtomNavigation(),
        ],
      ),
    );
  }
}
