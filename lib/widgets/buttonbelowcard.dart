import 'package:cred_assignment/widgets/customtext.dart';
import 'package:flutter/material.dart';

class ButtonBelowCard extends StatelessWidget {
  String title;
  double width;
  ButtonBelowCard({
    required this.width,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(width: 1.0, color: Color(0xff80a2af)),
        fixedSize: Size(width, screenHeight * 0.04),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      onPressed: () {},
      child: CustomText(
        color: Color(0xff80a2af),
        title: title,
        size: 10,
      ),
    );
  }
}
