import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const DetailsAppBar({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Activity Details",
          style: GoogleFonts.quicksand(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          //Favorite button
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          //Notification button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
