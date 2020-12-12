import 'package:flutter/material.dart';

const lebelTextStyle = TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  
  IconContent({this.icon, this.lebel});
  final IconData icon;
  final String lebel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          lebel,
          style: lebelTextStyle,
        )
      ],
    );
  }
}
