import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class BannerTextExclusive extends StatelessWidget {
  const BannerTextExclusive({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // commontext(
            //     text: 'Exclusive Subway Deal 1',
            //     fontSize: screenWidth * 0.045,
            //     fontFamily: 'Poppins',
            //     fontWeight: FontWeight.bold),
            // commontext(
            //     text: 'Rs.333.00',
            //     fontSize: screenWidth * 0.03,
            //     fontFamily: 'Poppins',
            //     color: Color(0xff000000).withOpacity(0.7))
            CommonText(
                text: AppStrings.exclusivedealone,
                Styles: Styles.textstyleHeaderone(context,
                    fontSize: screenWidth * 0.045)),
            CommonText(
                text: AppStrings.rsthree,
                Styles: Styles.textstyleHeaderfour(context,
                    color: Color(0xff000000).withOpacity(0.7)))
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        // commontext(
        //   text: '6 inch sub & 250 ml drink',
        //   fontSize: screenWidth * 0.03,
        //   color: Color(0xff000000).withOpacity(0.7),
        //   fontFamily: 'Poppins',
        // )
      ],
    );
  }
}
