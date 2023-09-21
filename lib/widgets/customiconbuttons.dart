import 'package:flutter/material.dart';

class CustomIconButtons extends StatelessWidget {
  IconData? icon;
  CustomIconButtons({
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Color.fromARGB(255, 49, 54, 59), // Button color
        child: InkWell(
          splashColor: Color(0xff1a2025), // Splash color
          onTap: () {},
          child: SizedBox(
            width: 40,
            height: 40,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
