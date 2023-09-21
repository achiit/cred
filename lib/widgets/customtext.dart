import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String title;
  Color color;
  FontWeight? weight;
  double? size;
  TextAlign? align;

  CustomText({
    this.align,
    required this.color,
    this.weight,
    this.size,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style:
          GoogleFonts.poppins(color: color, fontWeight: weight, fontSize: size),
    );
  }
}
