import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class RiderContainer extends StatelessWidget {
  const RiderContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: screenWidth * 0.05,
          left: screenWidth * 0.05,
          top: screenHeight * 0.04),
      child: Container(
        width: screenWidth * 1,
        height: screenHeight * 0.1,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 2,
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 3))
        ]),
        child: Row(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.01),
                child: Container(
                  height: screenHeight * 0.09,
                  width: screenWidth * 0.22,
                  child: Image.asset(
                    'assets/images/rider.png',
                    // // height: screenHeight * 0.1,
                    // width: screenWidth * 0.2,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.1,
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Column(
                children: [
                  // commontext(
                  //   text: 'Estimated delivery',
                  //   fontSize: screenWidth * 0.03,
                  //   color: Color(0xff000000).withOpacity(0.7),
                  // ),
                  // commontext(
                  //     text: 'Now (25 min)',
                  //     fontSize: screenWidth * 0.04,
                  //     fontWeight: FontWeight.bold)
                  CommonText(
                      text: AppStrings.extimate,
                      Styles: Styles.textstyleHeaderfour(
                        context,
                        color: Color(0xff000000).withOpacity(0.7),
                      )),
                  CommonText(
                      text: AppStrings.nowmints,
                      Styles: Styles.textstyleHeaderone(
                        context,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
