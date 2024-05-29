import 'package:flutter/material.dart';

class lists1 extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const lists1({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: screenWidth * 0.9948,
                height: screenHeight * 0.3243,
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
                child: Container(
                  width: screenWidth * 0.02,
                  height: screenHeight * 0.04,
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    top: screenWidth * 0.08,
                    // bottom: screenHeight * 0.05,
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Id',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                          Text(
                            '#121211554',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(8, 18, 18, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                          Text(
                            '04-05-2024',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(8, 18, 18, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Time',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins',
                                color: Color.fromRGBO(112, 112, 112, 1),
                              )),
                          Text(
                            '08:50 pm',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(8, 18, 18, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Bill Amount',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins',
                                color: Color.fromRGBO(112, 112, 112, 1),
                              )),
                          Text('₹280',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(8, 18, 18, 1),
                              )),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Remark',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'poppins',
                                color: Color.fromRGBO(112, 112, 112, 1),
                              )),
                          Text('Delivered',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(35, 162, 109, 1),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: screenWidth * 0.4260,
                            height: screenHeight * 0.0383,
                            margin: EdgeInsets.only(
                              top: screenHeight * 0.03,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(63, 102, 36, 1),
                            ),
                            child: const Center(
                              child: Text(
                                'View More',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
