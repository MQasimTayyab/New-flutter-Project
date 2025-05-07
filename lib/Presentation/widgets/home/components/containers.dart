import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class containers extends StatelessWidget {
  const containers({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(

        // height: 210.h,
        height: screenHeight < 568
            ? screenHeight * 0.27 // Small devices//XE
            : screenHeight <= 898
                ? screenHeight * 0.26 // Medium devices//XR
                : screenHeight <= 1024
                    ? screenHeight * 0.25 // Tablets//tab//ifone14
                    : screenHeight * 0.31, // Large devices

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFCD077),
                    borderRadius: BorderRadius.circular(5)),
                // height: screenHeight * 0.29,
                height: screenHeight < 568
                    ? screenHeight * 0.29 // Small devices//XE
                    : screenHeight <= 898
                        ? screenHeight * 0.26 // Medium devices//XR
                        : screenHeight <= 1024
                            ? screenHeight * 0.25 // Tablets//tab//ifone14
                            : screenHeight * 0.7, // Large devices
                width: (screenWidth * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.01),
                      child: Image.asset(
                        'assets/images/pand mart.png',
                        width: screenWidth * 0.28,
                        height: screenHeight * 0.14,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.02,
                            bottom: screenHeight * 0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // commontext(
                            //   text: 'pandamart',
                            //   fontFamily: 'Poppins',
                            //   fontSize: screenWidth * 0.037,
                            //   fontWeight: FontWeight.w600,
                            // ),
                            // commontext(
                            //   text: 'Everyday upto \n 25% OFF',
                            //   fontFamily: 'Poppins',
                            //   fontSize: screenWidth * 0.025,
                            //   fontWeight: FontWeight.w400,
                            // ),
                            CommonText(
                                text: AppStrings.pandamart,
                                Styles: Styles.textstyleHeadertwo(context,
                                    fontWeight: FontWeight.w600)),
                            CommonText(
                                text: AppStrings.everyday,
                                Styles: Styles.textstyleHeaderthree(context,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: (screenHeight * 0.29),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFEB9FBE),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: screenHeight < 568
                            ? screenHeight * 0.14 // Small devices//XE
                            : screenHeight <= 898
                                ? screenHeight * 0.17 // Medium devices//XR
                                : screenHeight <= 1024
                                    ? screenHeight *
                                        0.16 // Tablets//tab//ifone14
                                    : screenHeight * 0.2, // Large devices

                        width: screenWidth * 0.4,
                        // height: screenHeight * 0.17,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/pick up.png',
                              // width: screenWidth * 0.19,
                              height: screenHeight * 0.08,
                              fit: BoxFit.contain,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      bottom: screenHeight * 0.02,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // commontext(
                                        //   text: 'Pick-Up',
                                        //   fontFamily: 'Poppins',
                                        //   fontSize: screenWidth * 0.037,
                                        //   fontWeight: FontWeight.w600,
                                        // ),
                                        // commontext(
                                        //   text: 'Everyday upto \n 25% off',
                                        //   fontFamily: 'Poppins',
                                        //   fontSize: screenWidth * 0.025,
                                        //   fontWeight: FontWeight.w400,
                                        // ),
                                        CommonText(
                                            text: AppStrings.pickup,
                                            Styles: Styles.textstyleHeadertwo(
                                                context,
                                                fontWeight: FontWeight.w600)),
                                        CommonText(
                                            text: AppStrings.everyday,
                                            Styles: Styles.textstyleHeaderthree(
                                                context,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: screenHeight * 0.02,

                        // height: screenHeight < 568
                        //     ? screenHeight * 0.04 //small
                        //     : screenHeight >= 568 &&
                        //             screenHeight <= 896
                        //         ? (screenHeight *
                        //             0.04) //medium
                        //         : screenHeight *
                        //             0.07, // large
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(
                      //         top: screenHeight * 0.02,
                      //         right: screenWidth * 0.06)),

                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF85C0FC),
                            borderRadius: BorderRadius.circular(5)),
                        width: screenWidth * 0.4,
                        // height: screenHeight * 0.07,
                        height: screenHeight < 568
                            ? screenHeight * 0.02 // Small devices//XE
                            : screenHeight <= 898
                                ? screenHeight * 0.07 // Medium devices//XR
                                : screenHeight <= 1024
                                    ? screenHeight *
                                        0.07 // Tablets//tab//ifone14
                                    : screenHeight * 0.07, // Large devices
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.02,
                                  bottom: screenHeight * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // commontext(
                                  //   text: 'Shops',
                                  //   fontSize: screenWidth * 0.03,
                                  //   fontFamily: 'Poppins',
                                  //   fontWeight: FontWeight.w600,
                                  // ),
                                  // commontext(
                                  //     text: 'Grocery & more..',
                                  //     fontSize: screenWidth * 0.025,
                                  //     fontFamily: 'Poppins',
                                  //     fontWeight: FontWeight.w400)
                                  CommonText(
                                      text: AppStrings.shops,
                                      Styles: Styles.textstyleHeaderfour(
                                          context,
                                          fontWeight: FontWeight.w600)),
                                  CommonText(
                                      text: AppStrings.grocery,
                                      Styles: Styles.textstyleHeaderthree(
                                          context,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/shop.png',
                                  // width: screenWidth * 0.1,
                                  height: screenHeight * 0.05,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
              )
            ]));
  }
}
