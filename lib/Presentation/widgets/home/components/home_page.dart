import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_proj/Data/app_color.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

import 'package:flutter_proj/Presentation/widgets/home/components/app_bar.dart';
import 'package:flutter_proj/Presentation/widgets/home/components/containers.dart';
import 'package:flutter_proj/Presentation/widgets/home/components/food_delivery.dart';
import 'package:flutter_proj/Presentation/widgets/home/components/good_evening.dart';
import 'package:flutter_proj/Presentation/widgets/home/components/images.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          //Appbar components..
          appBar: Appbar(screenHeight: screenHeight, screenWidth: screenWidth),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //Goodevening components..
                goodevening(
                    screenHeight: screenHeight, screenWidth: screenWidth),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.07), //30
                  child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        // SizedBox(
                        //   height: screenHeight * 0.05,
                        // ),
                        Column(
                          children: [],
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),

                        // Textfield

                        Container(
                          height: screenHeight * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(3, 3),
                                )
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(screenWidth * 0.01),
                                  child: Icon(
                                    size: screenWidth * 0.05,
                                    Icons.search,
                                    color: Color(0xffD60665),
                                  ),
                                ),
                                labelText: 'Search for shops & resturants',
                                labelStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000).withOpacity(0.5))),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        //food delivery components
                        Fooddelivery(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        // four containers
                        containers(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),

                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          children: [
                            CommonText(
                                text: AppStrings.yourresturant,
                                Styles: Styles.textstyleHeaderone(context,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black))
                            // commontext(
                            //     text: 'Your Restaurants',
                            //     fontSize: screenWidth * 0.04,
                            //     fontFamily: 'Poppins',
                            //     fontWeight: FontWeight.w600),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          //images components
                          child: Images(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                        ),
                      ]),
                ),
              ],
            ),
          )),
    );
  }
}
