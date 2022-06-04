import 'package:flutter/material.dart';

import '../../constants/buttom_navigation.dart';
import 'widgets/details_appbar.dart';
import 'widgets/details_dates.dart';
import 'widgets/details_graph.dart';
import 'widgets/details_info.dart';
import 'widgets/details_stats.dart';
import 'widgets/details_steps.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsAppBar(appBar: AppBar()),
      body: Column(
        children: [
          DetailsDates(),
          DetailsSteps(),
          DetailsGraph(),
          DetailsInfo(),
          DetailsStats(),
          ButtomNavigation(),
        ],
      ),
    );
  }
}
