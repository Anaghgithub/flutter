import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String imagePath;
  final String thisWeekText;
  final String ordersText;
  final String completedText;
  final int orderCount;
  final Color color;

  const CustomCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.imagePath,
    required this.thisWeekText,
    required this.ordersText,
    required this.completedText,
    required this.orderCount, required this.color, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.4591,
      height: screenHeight * 0.1850,
      margin: const EdgeInsets.only(left: 10, top: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: screenWidth * 0.1679,
            margin: const EdgeInsets.only(
              top: 6,
              left: 6,
            ),
            child: Image.asset(
              imagePath,
            ),
          ),
          Container(
            width: screenWidth * 0.27,
            height: screenHeight * 0.15,
            padding: const EdgeInsets.all(8),
            color: color,
            child: Column(
              children: [
                Text(
                  thisWeekText,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
                Text(
                  '$orderCount',
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 26,
                  ),
                ),
                Text(
                  ordersText,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
                Text(
                  completedText,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
