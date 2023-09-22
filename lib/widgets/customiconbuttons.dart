import 'package:flutter/material.dart';

class CustomIconButtons extends StatelessWidget {
  IconData? icon;
  CustomIconButtons({
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ClipOval(
      child: Material(
        color: Color.fromARGB(255, 49, 54, 59), // Button color
        child: InkWell(
          splashColor: Color(0xff1a2025), // Splash color
          onTap: () {},
          child: SizedBox(
            width: screenWidth * 0.08,
            height: screenHeight * 0.042,
            child: Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
