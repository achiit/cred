import 'package:cred_assignment/widgets/custom_bottomsheet_2.dart';
import 'package:flutter/material.dart';

import 'customcard.dart';
import 'customtext.dart';

class CustomBottomSheet1 extends StatelessWidget {
  CustomBottomSheet1({super.key});
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
  void _showBottomSheet(BuildContext context, Widget sheet) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return sheet;

        //   Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(20.0), // Adjust the radius as needed
        //       topRight: Radius.circular(20.0), // Adjust the radius as needed
        //     ),
        //     color: Color(0xff161e26),
        //   ),
        //   height: 450, // Adjust the height as needed
        //   // Background color of the bottom sheet
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: <Widget>[
        //             CustomText(
        //               color: Color(0xff708d99),
        //               title: "How do you wish to repay?",
        //             ),
        //             CustomText(
        //               color: Color(0xff65767f),
        //               size: 10,
        //               title: "Choose on of our recommended plans or make your own",
        //             ),
        //             Container(
        //               height: 160,
        //               width: double.infinity,
        //               margin: EdgeInsets.all(8.0),
        //               padding: EdgeInsets.all(4),
        //               child: ListView.builder(
        //                   //   clipBehavior: Clip.antiAlias,
        //                   itemCount: 4,
        //                   physics: BouncingScrollPhysics(),
        //                   scrollDirection: Axis.horizontal,
        //                   itemBuilder: (ctx, i) {
        //                     return CheckboxBottomSheet();
        //                   }),
        //             ),
        //             Container(
        //               width: 200,
        //               height: 40,
        //               padding: EdgeInsets.all(8.0),
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(30.0),
        //                   border: Border.all(color: Colors.white)),
        //               child: Center(
        //                 child: CustomText(
        //                   color: Colors.white,
        //                   title: 'Create your own plan',
        //                 ),
        //               ),
        //             ),
        //
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         child: Align(
        //           alignment: Alignment.bottomCenter,
        //           child: Container(
        //             //margin: const EdgeInsets.all(5),
        //             height: MediaQuery.of(context).size.height * 0.07,
        //             width: double.infinity,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.only(
        //                 topLeft:
        //                 Radius.circular(20.0), // Adjust the radius as needed
        //                 topRight:
        //                 Radius.circular(20.0), // Adjust the radius as needed
        //               ),
        //               color: Color(0xff3a4399),
        //             ),
        //             child: ElevatedButton(
        //               onPressed: () {
        //                 _showBottomSheet(context);
        //               },
        //               child: CustomText(
        //                   color: Colors.white,
        //                   size: 12,
        //                   title: 'Select your bank account'),
        //               style: ElevatedButton.styleFrom(
        //                 backgroundColor: Colors.transparent,
        //                 // Set the button's background to transparent
        //                 elevation: 0, // Remove button elevation
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
                  color: Colors.white70,
                  //Color(0xff708d99),
                  title: "How do you wish to repay?",
                ),
                CustomText(
                  color: Color(0xff65767f),
                  size: 10,
                  title: "Choose on of our recommended plans or make your own",
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Color(0xff80a2af)),
                    fixedSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: CustomText(
                    color: Color(0xff80a2af),
                    title: "Create your own plan",
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
                    Navigator.of(context).pop();
                    _showBottomSheet(context, CustomBottomSheet2());
                  },
                  child: CustomText(
                      color: Colors.white,
                      size: 12,
                      title: 'Select your bank account'),
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
