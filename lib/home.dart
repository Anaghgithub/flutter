import 'package:flutter/material.dart';
import 'package:ui_3/widgets/appbar.dart';
import 'package:ui_3/widgets/container.dart';
import 'package:ui_3/widgets/cutomcard.dart';
import 'package:ui_3/widgets/listview.dart';
import 'secondpage.dart'; // Import the second page

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    List<String> textStrings = ['Pending orders', 'Todays Menu', 'Offers & Price'];

    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            Row(
              children: [
                CustomCard(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  imagePath: 'lib/assets/images/money-earn_svgrepo.com.png',
                  thisWeekText: 'This week',
                  orderCount: 200,
                  ordersText: 'orders',
                  completedText: 'completed',
                  color: const Color.fromRGBO(242, 151, 39, 1),
                ),
                CustomCard(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  imagePath: 'lib/assets/images/money-earn_svgrepo.com - Copy.png',
                  thisWeekText: 'This week',
                  orderCount: 8200,
                  ordersText: 'Revenue ',
                  completedText: 'Accumulated',
                  color: const Color.fromRGBO(51, 115, 87, 1),
                ),
              ],
            ),
            CustomContainer(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            CustomListView(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              textStrings: textStrings,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Icon(Icons.navigation),
        ),
        // bottomNavigationBar: Bottombar(),
      ),
    );
  }
}
