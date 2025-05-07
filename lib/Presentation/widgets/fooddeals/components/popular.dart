import 'package:flutter/material.dart';
import 'package:flutter_proj/Application/Services/navigation_services.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

import 'package:flutter_proj/Presentation/widgets/exclusive/exclusive.dart';
import 'package:flutter_svg/svg.dart';

class Popular extends StatelessWidget {
  const Popular({
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/fire.svg',
                  width: screenWidth * 0.025,
                  height: screenHeight * 0.025,
                  color: Color(0xffD60665),
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ),
                // commontext(
                //     text: 'Popular',
                //     fontSize: screenWidth * 0.05,
                //     color: Color(0xff000000).withOpacity(0.99),
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.bold),
                CommonText(
                    text: AppStrings.popular,
                    Styles: Styles.textstyleHeaderone(
                      context,
                      fontSize: screenWidth * 0.05,
                      color: Color(0xff000000).withOpacity(0.99),
                    )),
              ],
            ),
            // commontext(
            //   text: 'Most ordered right now',
            //   fontSize: screenWidth * 0.03,
            //   fontFamily: 'Poppins',
            // )
            CommonText(
                text: AppStrings.mostodered,
                Styles: Styles.textstyleHeaderfour(context)),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // commontext(
                //     text: 'Exclusive Subway Deal 1',
                //     fontSize: screenWidth * 0.03,
                //     color: Color(0xff000000),
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.bold),
                CommonText(
                    text: AppStrings.exclusivedealone,
                    Styles: Styles.textstyleHeaderfour(context,
                        fontWeight: FontWeight.bold)),
                // commontext(
                //   text: '6 inch sub & 250 ml drink',
                //   fontSize: screenWidth * 0.025,
                //   color: Color(0xff000000).withOpacity(0.7),
                //   fontFamily: 'Poppins',
                // ),
                CommonText(
                    text: AppStrings.sixinch,
                    Styles: Styles.textstyleHeaderthree(context)),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  children: [
                    // commontext(
                    //   text: 'Rs. 333.00 ',
                    //   fontSize: screenWidth * 0.025,
                    //   fontFamily: 'Poppins',
                    // ),
                    CommonText(
                        text: AppStrings.rsthree,
                        Styles: Styles.textstyleHeaderthree(context)),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'Rs. 555.00',
                      style: TextStyle(
                          fontSize: screenWidth * 0.025,
                          color: Color(0xff000000).withOpacity(0.7),
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigate.to(context, Exclusive());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Exclusive(),
                //   ),
                // );
              },
              child: Container(
                width: screenWidth * 0.27,
                // height: screenHeight * 0.15,

                child: Image(
                  image: AssetImage('assets/images/subwa.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.04),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: screenWidth * 0.003,
                        color: Colors.grey.withOpacity(0.5)))),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // commontext(
                  //     text: 'Drink & Cookie',
                  //     fontSize: screenWidth * 0.03,
                  //     color: Color(0xff000000),
                  //     fontFamily: 'Poppins',
                  //     fontWeight: FontWeight.bold),
                  CommonText(
                      text: AppStrings.drinkcook,
                      Styles: Styles.textstyleHeaderfour(context,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  Row(
                    children: [
                      // commontext(
                      //   text: 'Rs. 160.00',
                      //   fontSize: screenWidth * 0.025,
                      //   fontFamily: 'Poppins',
                      // ),
                      CommonText(
                          text: 'Rs. 160.00',
                          Styles: Styles.textstyleHeaderthree(context)),
                      SizedBox(
                        width: screenWidth * 0.035,
                      ),
                      Text(
                        'Rs. 250.00',
                        style: TextStyle(
                            fontSize: screenWidth * 0.025,
                            color: Color(0xff000000).withOpacity(0.7),
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth * 0.27,
              // height: screenHeight * 0.13,
              child: Image(
                image: AssetImage('assets/images/drink.png'),
                // width: screenWidth * 0.1,
                // height: screenHeight * 0.1,
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.01),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.04),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: screenWidth * 0.003,
                        color: Colors.grey.withOpacity(0.5)))),
          ),
        ),
      ],
    );
  }
}
