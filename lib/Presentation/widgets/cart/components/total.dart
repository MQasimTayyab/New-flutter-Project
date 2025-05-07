import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_button.dart';
import 'package:flutter_proj/Presentation/common/common_text.dart';

class TotalContainer extends StatelessWidget {
  const TotalContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.grey.withOpacity(0.7),
            // offset: Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // commontext(
                //   text: 'Total ',
                //   fontSize: screenWidth * 0.04,
                //   fontWeight: FontWeight.bold,
                // ),

                // commontext(
                //   text: 'Rs.482.60',
                //   fontSize: screenWidth * 0.04,
                //   fontWeight: FontWeight.bold,
                // ),
                CommonText(
                    text: AppStrings.total,
                    Styles: Styles.textstyleHeaderone(context)),
                CommonText(
                    text: AppStrings.rsfour,
                    Styles: Styles.textstyleHeaderone(context))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: SizedBox(
              width: screenWidth * 1,
              height: screenHeight * 0.05,
              child: CommonButton(
                text: AppStrings.placeorder,
                onPressed: () {},
                color: Colors.pink,
                textColor: Color(0xffffffff),
                borderRadius: (5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
