import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class BannerCart extends StatelessWidget {
  const BannerCart({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth * 0.1,
          height: screenHeight * 0.035,
          decoration: BoxDecoration(
            color: Color(0xFFC4C4C4),
            shape: BoxShape.rectangle,
          ),
          child: Center(
            // child: commontext(
            //     text: '1',
            //     fontSize: screenWidth * 0.04,
            //     fontWeight: FontWeight.bold)
            child: CommonText(
                text: '1', Styles: Styles.textstyleHeaderone(context)),
          ),
        ),
        // SizedBox(
        //   width: screenWidth * 0.01,
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // commontext(
            //     text: 'Exclusive Subway Deal 1',
            //     color: Color(0xffD60665),
            //     fontSize: screenWidth * 0.035,
            //     fontWeight: FontWeight.w400),
            // commontext(
            //   text: 'Chicken Teriyaki,,Mirinda..',
            //   fontSize: screenWidth * 0.028,
            //   fontWeight: FontWeight.w500,
            //   color: Color(0xff000000).withOpacity(0.6),
            // )
            CommonText(
                text: AppStrings.exclusivedealone,
                Styles: Styles.textstyleHeadertwo(context,
                    color: Color(0xffD60665))),
            CommonText(
                text: AppStrings.chikenmarinda,
                Styles: Styles.textstyleHeaderseven(
                  context,
                  color: Color(0xff000000).withOpacity(0.6),
                ))
          ],
        ),
        SizedBox(
          width: screenWidth * 0.1,
        ),
        // commontext(
        //   text: 'Rs.560.00',
        //   fontSize: screenWidth * 0.03,
        //   color: Color(0xff000000).withOpacity(0.6),
        // ),
        CommonText(
            text: AppStrings.rsfive,
            Styles: Styles.textstyleHeaderfour(
              context,
              color: Color(0xff000000).withOpacity(0.6),
            ))
      ],
    );
  }
}
