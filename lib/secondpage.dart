import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
        title: const Center(
          child: Text(
            'History',
            style: customTextStyle,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenWidth * 0.9948,
            height: screenHeight * 0.3243,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
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
                    padding: EdgeInsets.all(12.0), // You can adjust the padding value as needed
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
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: 2, // Adjust the item count as needed
                itemBuilder: (context, index) {
                  return Container(
                    width: screenWidth * 0.9948,
                    height: screenHeight * 0.3243,
                    margin: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
