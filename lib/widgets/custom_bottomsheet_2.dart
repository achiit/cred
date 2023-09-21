import 'package:flutter/material.dart';

import 'customcard.dart';
import 'customtext.dart';

class CustomBottomSheet2 extends StatefulWidget {
  CustomBottomSheet2({super.key});

  @override
  State<CustomBottomSheet2> createState() => _CustomBottomSheet2State();
}

class _CustomBottomSheet2State extends State<CustomBottomSheet2> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), // Adjust the radius as needed
          topRight: Radius.circular(20.0), // Adjust the radius as needed
        ),
        color: Color(0xff161e26),
      ),
      height: 700, // Adjust the height as needed
      // Background color of the bottom sheet
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(
                  color: Color(0xff708d99),
                  title: "where should we send the money?",
                ),
                CustomText(
                  color: Color(0xff65767f),
                  size: 10,
                  title:
                      'amount will be credited to this bank account. EMI will also be debited from this bank account',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _value = !_value;
                      });
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.crunchbase.com/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/lbznxunz52aopasqbvgd'),
                                fit: BoxFit.fill),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      title: CustomText(
                        color: Colors.white,
                        title: 'Paytm Payments Bank',
                        size: 15,
                      ),
                      subtitle: CustomText(
                        color: Colors.white30,
                        title: '919935670475',
                        size: 12,
                      ),
                      trailing: InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color:
                                _value ? Color(0xff3c2f35) : Colors.transparent,
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
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Color(0xff80a2af)),
                    fixedSize: Size(180, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: CustomText(
                    color: Color(0xff80a2af),
                    title: "Change Account",
                    size: 10,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //margin: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(20.0), // Adjust the radius as needed
                    topRight:
                        Radius.circular(20.0), // Adjust the radius as needed
                  ),
                  color: Color(0xff3a4399),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    //     _showBottomSheet(context);
                    Navigator.of(context).pop();
                  },
                  child: CustomText(
                      color: Colors.white38,
                      size: 16,
                      title: 'Tap for 1-click KYC'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    // Set the button's background to transparent
                    elevation: 0, // Remove button elevation
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
