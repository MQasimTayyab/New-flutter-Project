import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';
import 'package:flutter_proj/Presentation/common/common_asset_image.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class goodevening extends StatelessWidget {
  const goodevening({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight < 560
          ? screenHeight * 0.11 // Small devices
          : screenHeight <= 896
              ? screenHeight * 0.13 // Medium devices
              : screenHeight <= 1024
                  ? screenHeight * 0.13 // Tablets
                  : screenHeight * 0.16, // Large devices
      width: screenWidth * 1,
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //    Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16)),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonText(
                    text: AppStrings.goodevening,
                    Styles: Styles.textstyleHeadertwo(
                      context,
                      fontWeight: FontWeight.bold,
                    ),
                    // fontSize: screenWidth * 0.036,
                    // fontWeight: FontWeight.bold,
                    // fontFamily: 'Poppins'
                  ),
                  // commontext(
                  //   text:
                  //       'what s for diner? There are 567 \nresturants in your area',
                  //   fontSize: screenWidth * 0.025,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  // ),
                  CommonText(
                      text: AppStrings.whatsfo,
                      Styles: Styles.textstyleHeaderthree(
                        context,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // AssetImages(
                //     imagepath: 'assets/images/good.png',
                //     screenHeight: screenHeight * 0.12,
                //     screenWidth: screenWidth * 0.28),
                Image.asset(
                  'assets/images/good.png',
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.28,
                  fit: BoxFit.contain,
                ),
              ],
            )
          ]),
    );
  }
}
