import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_color.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class Fooddelivery extends StatelessWidget {
  const Fooddelivery({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD60665),
        borderRadius: BorderRadius.circular(5),
      ),
      // height: screenHeight * 0.2,

      // width: screenWidth * 1,

      height: screenHeight < 568
          ? screenHeight * 0.18 // Small devices//XE
          : screenHeight <= 898
              ? screenHeight * 0.16 // Medium devices//XR
              : screenHeight <= 1024
                  ? screenHeight * 0.17 // Tablets//tab//ifone14
                  : screenHeight * 0.2, // Large devices

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.04, bottom: screenHeight * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // commontext(
                //     text: 'Food delivery',
                //     fontSize: screenWidth * 0.04,w
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.w600,
                //     color: Color(0xffffffff)),
                // Padding(padding: EdgeInsets.only(top: screenHeight * 0.003)),
                // commontext(
                //   text: "Oder food you love",
                //   color: Color(0xffffffff),
                //   fontSize: screenWidth * 0.03,
                //   fontFamily: 'Poppins',
                //   fontWeight: FontWeight.w400,
                // ),
                CommonText(
                    text: AppStrings.fooddelivery,
                    Styles: Styles.textstyleHeaderone(context,
                        color: AppColor.white)),
                CommonText(
                    text: AppStrings.order,
                    Styles: Styles.textstyleHeaderfour(context,
                        color: AppColor.black))
              ],
            ),
          ),
          SizedBox(
            // width: screenWidth * 0.23,
            height: screenHeight * 0.14,
            child: Image.asset(
              'assets/images/foodd.png',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
