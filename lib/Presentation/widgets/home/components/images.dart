import 'package:flutter/material.dart';
import 'package:flutter_proj/Application/Services/navigation_services.dart';
import 'package:flutter_proj/Data/app_color.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';
import 'package:flutter_proj/Presentation/common/common_asset_image.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

import 'package:flutter_proj/Presentation/widgets/fooddeals/food_deals.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigate.to(context, Fooddeals());
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Fooddeals()),
                  // );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const Fooddeals(),
                  //   ),

                  // );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: AssetImages(
                        issvg: false,
                        imagepath: 'assets/images/pic1.png',
                        screenHeight: screenHeight * 0.12,
                        screenWidth: screenWidth * 0.53,
                      ),

                      // child: Image.asset(
                      //   'assets/images/pic1.png',
                      //   height: screenHeight * 0.12,
                      //   width: screenWidth * 0.53,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.01),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFD60665),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            height: screenHeight * 0.02,
                            width: screenWidth * 0.16,
                            child: Center(
                              // child: commontext(
                              //   text: 'Food Fest Deals',
                              //   color: Colors.white,
                              //   fontFamily: 'Poppins',
                              //   fontSize: screenWidth * 0.016,
                              //   fontWeight: FontWeight.w400,
                              // ),
                              child: CommonText(
                                  text: AppStrings.foodfestdeals,
                                  Styles: Styles.textstyleHeadersix(context,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            height: screenHeight * 0.03,
                            width: screenWidth * 0.1,
                            child: Center(
                              // child: commontext(
                              //   text: '30 mint',
                              //   fontFamily: 'Poppins',
                              //   fontSize: screenWidth * 0.02,
                              //   fontWeight: FontWeight.w600,
                              // ),
                              child: CommonText(
                                  text: AppStrings.thirtymints,
                                  Styles: Styles.textstyleHeaderfive(context,
                                      fontWeight: FontWeight.w600)),
                            ))
                      ],
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.02, top: screenHeight * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // commontext(
                  //   text: 'Subway-Lahore',
                  //   fontFamily: 'Poppins',
                  //   fontSize: screenWidth * 0.025,
                  //   fontWeight: FontWeight.bold,
                  // ),
                  // commontext(
                  //   text: 'Fast Food, American, Meat, Halal',
                  //   fontSize: screenWidth * 0.025,
                  //   fontWeight: FontWeight.w100,
                  // ),
                  // commontext(
                  //   text: 'PKR 60 delivery fee',
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: screenWidth * 0.025,
                  // ),
                  CommonText(
                      text: AppStrings.subwaylahore,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.bold)),
                  CommonText(
                      text: AppStrings.fastfoodamer,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.w100)),
                  CommonText(
                      text: AppStrings.pkrsixty,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: screenWidth * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // child: AssetImages(
                  //   issvg: true,
                  //   imagepath: 'assets/images/pic2.png',
                  //   screenHeight: 0.12,
                  //   screenWidth: 0.35,
                  // ),
                  child: Image.asset(
                    'assets/images/pic2.png',
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.12,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.01),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFD60665),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        height: screenHeight * 0.02,
                        width: screenWidth * 0.16,
                        child: Center(
                          // child: commontext(
                          //   text: 'Food Fest Deals',
                          //   color: Colors.white,
                          //   fontFamily: 'Poppins',
                          //   fontSize: screenWidth * 0.016,
                          //   fontWeight: FontWeight.w400,
                          // ),
                          child: CommonText(
                              text: AppStrings.foodfestdeals,
                              Styles: Styles.textstyleHeadersix(context,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          //shape: BoxShape.circle
                        ),
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.1,
                        child: Center(
                          //     child: commontext(
                          //   text: '30 mint',
                          //   fontSize: screenWidth * 0.02,
                          //   fontWeight: FontWeight.w600,
                          // )
                          // Text(
                          //   '30 mint',
                          //   style: TextStyle(
                          //     fontFamily: 'Poppins',
                          //     fontSize:
                          //         screenWidth * 0.02,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          child: CommonText(
                              text: AppStrings.thirtymints,
                              Styles: Styles.textstyleHeaderfive(context,
                                  fontWeight: FontWeight.w600)),
                        ))
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.02, top: screenHeight * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // commontext(
                  //   text: 'Broadway Pizza-',
                  //   fontSize: screenWidth * 0.025,
                  //   fontWeight: FontWeight.bold,
                  //   fontFamily: 'Poppins',
                  // ),
                  // commontext(
                  //   text: 'Fast Food, American, Meat, Halal',
                  //   fontSize: screenWidth * 0.025,
                  //   fontWeight: FontWeight.w100,
                  //   fontFamily: 'Poppins',
                  // ),
                  // commontext(
                  //   text: 'PKR 60 delivery fee',
                  //   fontSize: screenWidth * 0.025,
                  //   fontWeight: FontWeight.bold,
                  //   fontFamily: 'Poppins',
                  // ),
                  CommonText(
                      text: AppStrings.broadwaypizza,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.bold)),
                  CommonText(
                      text: AppStrings.fastfoodamer,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.w100)),
                  CommonText(
                      text: AppStrings.pkrsixty,
                      Styles: Styles.textstyleHeaderthree(context,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
