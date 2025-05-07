import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class SubTotal extends StatelessWidget {
  const SubTotal({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // commontext(
            //     text: 'Subtotal',
            //     fontSize: screenWidth * 0.04,
            //     fontWeight: FontWeight.bold),
            // commontext(
            //   text: 'Rs.560.00',
            //   fontSize: screenWidth * 0.03,
            //   color: Color(0xff000000).withOpacity(0.7),
            // )
            CommonText(
                text: AppStrings.subtotal,
                Styles: Styles.textstyleHeaderone(context)),
            CommonText(
                text: AppStrings.rsfive,
                Styles: Styles.textstyleHeaderfour(
                  context,
                  color: Color(0xff000000).withOpacity(0.7),
                ))
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // commontext(
            //   text: 'Discount',
            //   fontSize: screenWidth * 0.03,
            //   color: Color(0xff000000).withOpacity(0.6),
            // ),
            CommonText(
                text: AppStrings.discount,
                Styles: Styles.textstyleHeaderfour(
                  context,
                  color: Color(0xff000000).withOpacity(0.6),
                )),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xffF0D4DD),
                    borderRadius: BorderRadius.circular(15)),
                height: screenHeight * 0.025,
                width: screenWidth * 0.15,
                child: Center(
                  // child: commontext(
                  //     text: '-Rs.227.00',
                  //     fontFamily: 'Poppins',
                  //     fontSize: screenWidth * 0.025,
                  //     fontWeight: FontWeight.w500,
                  //     color: Color(0xffD60665)),
                  child: CommonText(
                      text: '-Rs.227.00',
                      Styles: Styles.textstyleHeaderthree(context,
                          color: Color(0xffD60665))),
                ))
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // commontext(
            //   text: 'Delivery fee',
            //   fontSize: screenWidth * 0.03,
            //   color: Color(0xff000000).withOpacity(0.6),
            // ),
            // commontext(text: 'Rs.60.00', fontSize: screenWidth * 0.025)
            CommonText(
                text: AppStrings.deliverfee,
                Styles: Styles.textstyleHeaderfour(
                  context,
                  color: Color(0xff000000).withOpacity(0.6),
                )),
            CommonText(
                text: 'Rs.60.00', Styles: Styles.textstyleHeaderthree(context))
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // commontext(
            //   text: 'VAT',
            //   fontSize: screenWidth * 0.03,
            //   color: Color(0xff000000).withOpacity(0.6),
            // ),
            // commontext(
            //   text: 'Rs.89.00',
            //   fontSize: screenWidth * 0.02,
            // )
            CommonText(
                text: AppStrings.vat,
                Styles: Styles.textstyleHeaderfour(
                  context,
                  color: Color(0xff000000).withOpacity(0.6),
                )),
            CommonText(
                text: AppStrings.rseight,
                Styles: Styles.textstyleHeaderfive(context))
          ],
        ),
      ],
    );
  }
}
