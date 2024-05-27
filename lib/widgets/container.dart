import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  CustomContainer({super.key, 
    required this.screenWidth, 
    required this.screenHeight, 
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9948,
      height: screenHeight * 0.1850,
      margin: const EdgeInsets.all(13),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(64, 31, 113, 1),

        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: screenHeight * 0.03,
            margin: const EdgeInsets.only(
              top: 8,
              left:20,
            ),
            child: const Text(
              'Don’t miss today’s earnings!', // Replace with your desired text
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat' // Adjust text color as needed
              ),
            ),
          ),
          Container(
            color: const Color.fromRGBO(64, 31, 113, 1),
            margin: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 10,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Donot miss the wonderfull offers of this-',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Text(
                        'company.if you miss this offer it will',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Text(
                        'be a large loss for you !!grab your offers',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/Group.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
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
