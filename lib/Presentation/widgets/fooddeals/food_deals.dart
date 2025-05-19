import 'package:flutter/material.dart';
import 'package:flutter_proj/Presentation/widgets/fooddeals/components/banner.dart';
import 'package:flutter_proj/Presentation/widgets/fooddeals/components/popular.dart';
import 'package:flutter_proj/Presentation/widgets/fooddeals/components/subway_container.dart';
import 'package:flutter_proj/Presentation/widgets/fooddeals/components/tabbar.dart';

class Fooddeals extends StatefulWidget {
  const Fooddeals({super.key});

  @override
  State<Fooddeals> createState() => _FooddealsState();
}

class _FooddealsState extends State<Fooddeals> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //subway-johar-town all container..
                Subwaycontainer(
                    screenWidth: screenWidth, screenHeight: screenHeight),

                //banner text...

                BannerText(
                    screenWidth: screenWidth, screenHeight: screenHeight),
                SizedBox(
                  height: screenHeight * 0.012,
                ),
                Column(
                  children: [
                    //container tabbar components..
                    TabbarContainer(
                        screenHeight: screenHeight, screenWidth: screenWidth),
                    SizedBox(
                      height: screenHeight * 0.035,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.09, right: screenWidth * 0.04),

                      //popular svg,texts and both images
                      child: Popular(
                          screenWidth: screenWidth, screenHeight: screenHeight),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
