import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_color.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

class TabbarContainer extends StatelessWidget {
  const TabbarContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: screenWidth * 1,
      // height: screenHeight * 0.15,
      height: screenHeight < 568
          ? screenHeight * 0.16 // Small devices//XE
          : screenHeight <= 898
              ? screenHeight * 0.16 // Medium devices//XR
              : screenHeight <= 1024
                  ? screenHeight * 0.14 // Tablets//tab//ifone14
                  : screenHeight * 0.14, // Large devices

      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.7),
            offset: Offset(0, 3))
      ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffD60665),
                borderRadius: BorderRadius.circular(5)),
            width: screenWidth * 0.82,
            height: screenHeight * 0.055,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.02, top: screenHeight * 0.01),
              // child: commontext(
              //     text: 'Food Fest Deals',
              //     color: Color(0xffffffff),
              //     fontSize: screenWidth * 0.03,
              //     fontFamily: 'Poppins',
              //     fontWeight: FontWeight.w500),
              child: CommonText(
                  text: AppStrings.foodfestdeals,
                  Styles: Styles.textstyleHeaderfour(context,
                      color: AppColor.white)),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.025,
          ),
          Row(
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: screenWidth * 0.05,
                    ),
                    child: TabBar(
                        // indicator: BoxDecoration(
                        //     color: Colors.pink,
                        //     borderRadius: BorderRadius.zero),
                        labelPadding: EdgeInsets.only(
                          right: screenWidth * 0.06,
                        ),
                        // labelPadding: EdgeInsets.zero,
                        // indicatorPadding: EdgeInsets.zero,
                        // padding: EdgeInsets.zero,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: screenWidth * 0.008, color: Colors.pink),
                        ),
                        indicatorPadding: EdgeInsets.only(bottom: 7),
                        unselectedLabelColor: Color(0xff000000),
                        labelColor: Color(0xff000000),
                        isScrollable: true,
                        dividerHeight: 0,
                        tabs: [
                          // Tab(
                          //   text: 'Popular',
                          // ),
                          // Tab(
                          //   text: 'Exclusion Subway Deals',
                          // ),
                          // Tab(
                          //   text: 'Crazy Deals',
                          // )

                          Tab(
                            // child: commontext(
                            //     text: 'Popular',
                            //     fontSize: screenWidth * 0.031,
                            //     fontFamily: 'Poppins',
                            //     color: Colors.black,
                            //     fontWeight: FontWeight.w500),
                            child: CommonText(
                                text: AppStrings.popular,
                                Styles: Styles.textstyleHeaderfour(context)),
                          ),

                          Tab(
                            // child: commontext(
                            //     text: 'Exclusion Subway Deals',
                            //     fontSize: screenWidth * 0.031,
                            //     fontFamily: 'Poppins',
                            //     color: Colors.black,
                            //     fontWeight: FontWeight.w500),
                            child: CommonText(
                                text: AppStrings.exclusionsubwayd,
                                Styles: Styles.textstyleHeaderfour(context)),
                            // text: 'Exclusion Subway Deals ',
                          ),
                          Tab(
                            // child: commontext(
                            //     text: 'Crazy Deals',
                            //     fontSize: screenWidth * 0.031,
                            //     fontFamily: 'Poppins',
                            //     color: Colors.black,
                            //     fontWeight: FontWeight.w500),
                            child: CommonText(
                                text: AppStrings.crazyd,
                                Styles: Styles.textstyleHeaderfour(context)),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
