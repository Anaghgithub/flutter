import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(63, 61, 86, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: 38, 
            height: 50, 
            child:
                Image.asset('lib/assets/images/Frame.png', fit: BoxFit.contain),
          ),
          SizedBox(
            width: 38, // specify width
            height: 50, // specify height
            child: Image.asset('lib/assets/images/Frame 209.png',
                fit: BoxFit.contain),
          ),
          SizedBox(
            width: 38, // specify width
            height: 50, // specify height
            child: Image.asset('lib/assets/images/Frame 207.png',
                fit: BoxFit.contain),
          ),
          SizedBox(
            width: 38, // specify width
            height: 50, // specify height
            child: Image.asset('lib/assets/images/Frame (1).png',
                fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
