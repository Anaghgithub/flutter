import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Menupage extends StatelessWidget {
  const Menupage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    const TextStyle customTextStyle = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );

    final List<String> menuItems = [
      'Putt',
      'Appam',
      'Item 3',
      'Chappathi',
      'Porotta',
      'Chicken Curry',
      'Chicken Fry',
      'Kappa',
      'Fish',
      'Fish Fry',
      'Meals',
      'Biriyani(chicken)',
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Center(
          child: Text(
            'Today\'s Menu',
            style: customTextStyle,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: screenWidth * 0.9948,
            height: screenHeight * 0.6,
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              top: screenHeight * 0.04,
            ),
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        menuItems[index],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Transform.scale(
                          scale: 0.5,
                          child: LiteRollingSwitch(
                            value: true,
                            textOn: '',
                            textOnColor: Colors.white,
                            textOff: '',
                            textOffColor: Colors.white,
                            colorOn: const Color.fromRGBO(63, 102, 36, 1),
                            colorOff: const Color.fromRGBO(176, 17, 3, 1),
                            iconOn: Icons.done,
                            iconOff: Icons.close,
                            textSize: 18.0,
                            onChanged: (bool state) {},
                            onTap: () {},
                            onDoubleTap: () {},
                            onSwipe: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            width: screenWidth * 0.893,
            height: screenHeight * 0.23,
            // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(left: 24, top: 16), // Added top padding
                  child: Text(
                    'Add Item',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              Column(
  children: [
    Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey, // Adjust border color as needed
              width: 1,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Text(
                'Select Item',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
              items: menuItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {},
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 25,
                width: 150,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
            width:
                120), // Adjust the spacing between the DropdownButton and the Add button
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(8),
          ),
          padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 7),
          child: const Text(
            'Add',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'poppins',
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
    const SizedBox(height: 30), // Adjust the vertical spacing between the Row and the next container
    Container(
      width: screenWidth*0.9,
      height: screenHeight*0.08,
      decoration: BoxDecoration(
            color: const Color.fromRGBO(253, 216, 53, 1),
        borderRadius: BorderRadius.circular(30), // Circular radius
      ),
      child: const Center(
        child: Text(
          'Update Menu',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0,0,0,1)
          ),
        ),
      ),
    ),
  ],
),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
