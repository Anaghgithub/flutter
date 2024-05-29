import 'package:flutter/material.dart';

class DateSelectionCard extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  DateSelectionCard({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9948,
      height: screenHeight * 0.3077,
      margin: EdgeInsets.only(
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
       boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.4),
        blurRadius: 10.0,
        offset: Offset(0, 10),
      ),
    ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight * 0.0766,
            width: screenWidth * 0.9948,
            decoration: const BoxDecoration(
              color: Colors.yellow,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Select Date',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.02,
                left: screenWidth * 0.02,
                right: screenWidth * 0.01,
              ),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * 0.14,
                    margin: const EdgeInsets.only(
                      top: 6,
                      left: 6,
                    ),
                    child: Image.asset('lib/assets/images/Vector (9).png'),
                  ),
                  Container(
                    width: screenWidth * 0.26,
                    height: screenHeight * 0.1,
                    padding: const EdgeInsets.only(top: 23, left: 10),
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From date',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '01 April 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: screenWidth * 0.14,
                    margin: const EdgeInsets.only(
                      top: 6,
                    ),
                    child: Image.asset('lib/assets/images/Vector (10).png'),
                  ),
                  Container(
                    width: screenWidth * 0.28,
                    height: screenHeight * 0.1,
                    padding: const EdgeInsets.only(top: 23, left: 6),
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To date',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '01 May 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 17,
            indent: 25,
            endIndent: 25,
          ),
          InkWell(
            child: Container(
              width: screenWidth * 0.2040,
              height: screenHeight * 0.0638,
              margin: EdgeInsets.only(
                top: screenHeight * 0.01,
                left: screenWidth * 0.63,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(253, 216, 53, 1),
              ),
              child: const Center(
                child: Text(
                  'Go',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
