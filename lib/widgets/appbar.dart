import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chayapeedika',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          Text(
            'calicut',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
      actions: [
        Transform.scale(
          scale: 0.5,
          child: LiteRollingSwitch(
            value: true,
            textOn: 'online',
            textOff: 'offline',
            colorOn: Colors.green,
            colorOff: Colors.red,
            iconOn: Icons.done,
            iconOff: Icons.close,
            textSize: 18.0,
            onChanged: (bool state) {},
            onTap: () {},
            onDoubleTap: () {},
            onSwipe: () {},

          ),
        ),
      ],
    );
  }
}
