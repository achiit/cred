import 'package:cred_assignment/constants/dimensions.dart';
import 'package:cred_assignment/widgets/buttonbelowcard.dart';

import 'package:cred_assignment/widgets/custombottomsheet.dart';
import 'package:cred_assignment/widgets/customcard.dart';
import 'package:cred_assignment/widgets/customcircularslider.dart';
import 'package:cred_assignment/widgets/customiconbuttons.dart';
import 'package:cred_assignment/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool first = false;
  bool second = false;
  bool _value = false;
  bool isFirstElementVisible = true;

  List<CheckboxBottomSheet> cards = [
    CheckboxBottomSheet(
      title1: '₹4,247',
      tilte2: 12,
      color: Color(0xff433139),
    ),
    CheckboxBottomSheet(
      title1: '₹5,580',
      tilte2: 9,
      color: Color(0xff7b718d),
    ),
    CheckboxBottomSheet(
      title1: '₹8,200',
      tilte2: 6,
      color: Color(0xff516a8b),
    ),
    CheckboxBottomSheet(
      title1: '₹2,000',
      tilte2: 12,
      color: Color(0xff354944),
    )
  ];
  double circularvalue = 0;
  void handleValueSelected(double selectedValue) {
    // Handle the selected value here or navigate to another screen.
    print('Selected Value: $selectedValue');
    circularvalue = selectedValue;
    // You can navigate to another screen and pass the value here.
    // Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherScreen(value: selectedValue)));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff0e1519),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButtons(
                        icon: FontAwesomeIcons.close,
                      ),
                      CustomIconButtons(
                        icon: FontAwesomeIcons.question,
                      )
                    ],
                  ),
                ),
                15.verticalSpace,
                first
                    ? Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.174,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff12181f),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    30.0), // Adjust the radius as needed
                                topRight: Radius.circular(
                                    30.0), // Adjust the radius as needed
                              ),
                            ),
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, top: 20, bottom: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      color: Color.fromARGB(255, 85, 98, 111),
                                      title: "credit amount",
                                      size: 12,
                                    ),
                                    CustomText(
                                      color: Color.fromARGB(255, 85, 98, 111),
                                      title: "₹ ${circularvalue.ceil() * 1000}",
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.expand_more),
                                onPressed: () {
                                  setState(() {
                                    first = false;
                                    second = false;
                                  });
                                },
                                color: Colors.white, // Icon color
                              ),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              color: Colors.white,
                              title: "nikunj, how much do you need?",
                            ),
                            CustomText(
                              color: Colors.grey,
                              size: 11,
                              title:
                                  "move the dial and set any amount you need upto ₹100000",
                            ),
                            20.verticalSpace,
                            Container(
                              width: screenWidth *
                                  0.9, // Set the width and height to make it square
                              height: screenHeight * 0.47,
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // White color for the container
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the radius as needed
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: screenHeight * 0.4,
                                    width: screenWidth * 0.8,
                                    child: CircularSlider(
                                      onValueSelected: handleValueSelected,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: CustomText(
                                      color: Colors.grey,
                                      align: TextAlign.center,
                                      size: 11,
                                      title:
                                          "stash is instant, money will be credited in seconds",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                CustomBottomButton(
                  text: "Proceed to EMI transaction",
                  screenHeight: screenHeight,
                  onpressed: () {
                    setState(() {
                      first = true;
                    });
                  },
                ),
              ],
            ),
          ),
          Visibility(
            visible: first,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      second = false;
                    });
                  },
                  child: second
                      ? Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.4,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff161e26),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      30.0), // Adjust the radius as needed
                                  topRight: Radius.circular(
                                      30.0), // Adjust the radius as needed
                                ),
                              ),
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 20, bottom: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            color: Color.fromARGB(
                                                255, 85, 98, 111),
                                            title: "EMI",
                                            size: 12,
                                          ),
                                          CustomText(
                                            color: Color.fromARGB(
                                                255, 85, 98, 111),
                                            title: "₹ 4,247 / mo",
                                            size: 13,
                                            weight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 50.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              color: Color.fromARGB(
                                                  255, 85, 98, 111),
                                              title: "duration",
                                              size: 12,
                                            ),
                                            CustomText(
                                              color: Color.fromARGB(
                                                  255, 85, 98, 111),
                                              title: "12 months",
                                              size: 13,
                                              weight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.expand_more),
                                  onPressed: () {
                                    setState(() {
                                      second = false;
                                    });
                                  },
                                  color: Colors.white, // Icon color
                                ),
                              ),
                            ),
                          ],
                        )
                      : WillPopScope(
                          onWillPop: () {
                            setState(() {
                              first = false;
                            });
                            return Future.value(false);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    20.0), // Adjust the radius as needed
                                topRight: Radius.circular(
                                    20.0), // Adjust the radius as needed
                              ),
                              color: Color(0xff1a222b),
                            ),
                            height: screenHeight *
                                0.6, // Adjust the height as needed
                            // Background color of the bottom sheet
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      CustomText(
                                        color: Colors.white70,
                                        //Color(0xff708d99),
                                        title: "How do you wish to repay?",
                                      ),
                                      CustomText(
                                        color: Color(0xff65767f),
                                        size: 10,
                                        title:
                                            "Choose on of our recommended plans or make your own",
                                      ),
                                      Container(
                                        height: 190,
                                        width: double.infinity,
                                        margin: EdgeInsets.all(8.0),
                                        padding: EdgeInsets.all(4),
                                        child: ListView.builder(
                                            //   clipBehavior: Clip.antiAlias,
                                            itemCount: cards.length,
                                            physics: BouncingScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (ctx, i) {
                                              return cards[i];
                                            }),
                                      ),
                                      ButtonBelowCard(
                                        title: "Create your own plan",
                                        width: screenWidth * 0.4,
                                      )
                                    ],
                                  ),
                                ),
                                CustomBottomButton(
                                  text: "Select your bank accont",
                                  screenHeight: screenHeight,
                                  onpressed: () {
                                    setState(() {
                                      second = true;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                )),
          ),
          Visibility(
              visible: second,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: WillPopScope(
                  onWillPop: () {
                    setState(() {
                      second = false;
                    });
                    return Future.value(false);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            20.0), // Adjust the radius as needed
                        topRight: Radius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                      color: Color(0xff1a222b),
                    ),
                    height: screenHeight * 0.5, // Adjust the height as needed
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _value = !_value;
                                    });
                                  },
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.15,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'https://images.crunchbase.com/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/lbznxunz52aopasqbvgd',
                                              ),
                                              fit: BoxFit.fill),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
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
                                          color: _value
                                              ? Color(0xff3c2f35)
                                              : Colors.transparent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                Colors.white54, // Border color
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
                              ButtonBelowCard(
                                title: "Change Account",
                                width: screenWidth * 0.35,
                              ),
                            ],
                          ),
                        ),
                        CustomBottomButton(
                          text: "Tap for 1-tap KYC",
                          screenHeight: screenHeight,
                          onpressed: _value
                              ? () {
                                  setState(() {
                                    second = true;
                                  });
                                }
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
