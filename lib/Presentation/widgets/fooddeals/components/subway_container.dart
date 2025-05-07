import 'package:flutter/material.dart';

import 'package:flutter_proj/Data/app_color.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_svg.dart';
import 'package:flutter_proj/Presentation/common/common_text.dart';

class Subwaycontainer extends StatelessWidget {
  const Subwaycontainer({
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
      // height: screenHeight * 0.32,
      height: screenHeight < 568
          ? screenHeight * 0.32 // Small devices//XE
          : screenHeight <= 898
              ? screenHeight * 0.32 // Medium devices//XR
              : screenHeight <= 1024
                  ? screenHeight * 0.28 // Tablets//tab//ifone14
                  : screenHeight * 0.4, // Large devices
      decoration: BoxDecoration(
          color: Color(0xFFEBDBE2),
          image: DecorationImage(
              image: AssetImage(
                'assets/images/detail burger.png',
              ),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08, right: screenWidth * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.of(context).pop();
                    // Navigate.pop(context);
                  },
                  child: Container(
                    width: screenWidth * 0.08,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                    child: Center(
                      child: CommonSvg(
                        svgPath: 'assets/svg/Vector.svg',
                        screenWidth: screenWidth * 0.02,
                        screenHeight: screenHeight * 0.02,
                        svgcolor: Color(0xffD60665),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4), shape: BoxShape.circle),

                      // child: Icon(
                      //   size: screenWidth * 0.04,
                      //   Icons.share_outlined,
                      //   color: Color(0xffD60665),
                      // ),
                      child: Center(
                        child: CommonSvg(
                          svgPath: 'assets/svg/Vector1.svg',
                          screenWidth: screenWidth * 0.025,
                          screenHeight: screenHeight * 0.025,
                          svgcolor: Color(0xffD60665),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.035,
                    ),
                    Container(
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4), shape: BoxShape.circle),

                      // child: Icon(
                      //   size: screenWidth * 0.04,
                      //   Icons.info_outline,
                      //   color: Color(0xffD60665),
                      // ),
                      child: Center(
                        child: CommonSvg(
                          svgPath: 'assets/svg/info-circle.svg',
                          screenWidth: screenWidth * 0.025,
                          screenHeight: screenHeight * 0.025,
                          svgcolor: Color(0xffD60665),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.01),
            child: Column(
              children: [
                Center(
                    child:

                        // commontext(
                        //     text: 'Subway - Johar Town',
                        //     color: Colors.white,
                        //     fontFamily: 'Poppins',
                        //     fontSize: screenWidth * 0.050,
                        //     fontWeight: FontWeight.bold),
                        CommonText(
                            text: AppStrings.subwayjohar,
                            Styles: Styles.textstyleHeaderone(context,
                                color: AppColor.white))),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  height: screenHeight * 0.03,
                  width: screenWidth * 0.2,
                  child: Center(
                    // child: commontext(
                    //   text: 'Deliver 30 mints',
                    //   color: Colors.white,
                    //   fontSize: screenWidth * 0.02,
                    //   fontFamily: 'Poppins',
                    // ),
                    child: CommonText(
                        text: AppStrings.deliverythirty,
                        Styles: Styles.textstyleHeaderfive(context,
                            color: AppColor.white)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                // commontext(
                //     text: '★ 4.2 (5k+)',
                //     color: Colors.white,
                //     fontSize: screenWidth * 0.025,
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.w400)
                CommonText(
                    text: AppStrings.star,
                    Styles: Styles.textstyleHeaderthree(context,
                        color: AppColor.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
