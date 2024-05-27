import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final List<String> textStrings;

  const CustomListView({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.textStrings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenWidth * 0.92,
          height: screenHeight * 0.35,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.9183,
                height: screenHeight * 0.0893,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(253, 216, 53, 1),
                ),
                child: Center(
                  child: Text(
                    textStrings[0],
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'popins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.9183,
                height: screenHeight * 0.0893,
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(253, 216, 53, 1),
                ),
                child: Center(
                  child: Text(
                    textStrings[1], // Assuming you want to display the second string
                    style: const TextStyle(
                      fontFamily: 'popins',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.9183,
                height: screenHeight * 0.0893,
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(253, 216, 53, 1),
                ),
                child: Center(
                  child: Text(
                    textStrings[2], // Assuming you want to display the third string
                    style: const TextStyle(
                      fontFamily: 'popins',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
