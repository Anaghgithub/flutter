import 'package:flutter/material.dart';
import 'package:ui_3/history_page/Todays_menu.dart';
import 'package:ui_3/history_page/dottedline.dart';
import 'package:ui_3/history_page/lists.dart';
import 'package:ui_3/history_page/select_date.dart';
import 'package:ui_3/widgets/bottom.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    const TextStyle customTextStyle = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'History',
            style: customTextStyle,
          ),
        ),
      ),
      body: Column(
        children: [
          DateSelectionCard(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          const SizedBox(height: 17),
          const MySeparator(),
          lists1(screenWidth: screenWidth, screenHeight: screenHeight),
          const Bottombar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Menupage()),
          );
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
