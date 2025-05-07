import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class BannerText extends StatelessWidget {
  const BannerText({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 1,
      // height: screenHeight * 0.10,
      height: screenHeight < 568
          ? screenHeight * 0.08 // Small devices//XE
          : screenHeight <= 898
              ? screenHeight * 0.09 // Medium devices//XR
              : screenHeight <= 1024
                  ? screenHeight * 0.10 // Tablets//tab//ifone14
                  : screenHeight * 0.16, // Large devices
      color: Color(0xFFEBDBE2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.09, bottom: screenHeight * 0.04),
            // child: commontext(
            //     text:
            //         "Get Rs.150 off your first order with Everyday\nfavourite by using code:HCNC. T&C apply",
            //     fontFamily: 'Poppins',
            //     color: Color(0xFFD60665),
            //     fontSize: screenWidth * 0.03,
            //     fontWeight: FontWeight.w400),
            child: CommonText(
                text: AppStrings.getrs,
                Styles: Styles.textstyleHeaderfour(
                  context,
                  color: Color(0xFFD60665),
                )),
          ),
          Image(
            image: AssetImage('assets/images/panda.png'),
            width: screenWidth * 0.18,
            height: screenHeight * 0.18,
          ),

          // SvgPicture.asset(
          //   'assets/svg/panda.svg',
          //   width: screenWidth * 0.050,
          //   height: screenHeight * 0.050,
          //   color: Color(0xffD60665),
          //   fit: BoxFit.contain,
          // ),
        ],
      ),
    );
  }
}
