import 'package:flutter/material.dart';
import 'package:cred_assignment/widgets/customtext.dart';
class CustomBottomButton extends StatelessWidget {
  String text;
  void Function()? onpressed;
  CustomBottomButton({
    required this.text,
    required this.onpressed,
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          //margin: const EdgeInsets.all(5),
          height: screenHeight * 0.07,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Adjust the radius as needed
              topRight: Radius.circular(20.0), // Adjust the radius as needed
            ),
            color: Color(0xff3a4399),
          ),
          child: ElevatedButton(
            onPressed: onpressed,
            child: CustomText(color: Colors.white, size: 12, title: text),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              // Set the button's background to transparent
              elevation: 0, // Remove button elevation
            ),
          ),
        ),
      ),
    );
  }
}
