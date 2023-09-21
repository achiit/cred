import 'package:flutter/material.dart';

class CheckboxBottomSheet extends StatefulWidget {
  String title1;
  int tilte2;

  Color? color;
  CheckboxBottomSheet({
    required this.title1,
    required this.tilte2,
    required this.color,
  });
  @override
  _CheckboxBottomSheetState createState() => _CheckboxBottomSheetState();
}

class _CheckboxBottomSheetState extends State<CheckboxBottomSheet> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        color: widget.color,
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: _value ? Color(0xff3c2f35) : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white54, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: _value
                  ? Icon(
                      Icons.check,
                      size: 25.0,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      size: 30.0,
                      color: Colors.transparent,
                    ),
            ),
          ),
          SizedBox(height: 10.0),
          Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.title1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15, // Responsive font size
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " / mo", // Update the calculation here
                      style: TextStyle(
                        fontSize: 15, // Responsive font size
                        color: const Color.fromARGB(255, 169, 166, 166),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "for ${widget.tilte2} months",
                style: TextStyle(
                    fontSize: 10.0,
                    color: const Color.fromARGB(255, 187, 184, 184)),
              ),
            ],
          ),
          Text(
            "See calculations",
            style: TextStyle(
                fontSize: 10.0,
                decoration: TextDecoration.underline,
                color: Color.fromARGB(255, 178, 176, 176)),
          ),
        ],
      ),
    );
  }
}
