import 'package:flutter/material.dart';
import 'package:flutter_proj/Application/Services/navigation_services.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';

import 'package:flutter_proj/Presentation/common/common_text.dart';

import 'package:flutter_proj/Presentation/widgets/Cart/components/bannercart.dart';
import 'package:flutter_proj/Presentation/widgets/Cart/components/rider_container.dart';
import 'package:flutter_proj/Presentation/widgets/Cart/components/subtotal.dart';
import 'package:flutter_proj/Presentation/widgets/Cart/components/total.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.07,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(4, 0),
                ),
              ],
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigate.pop(context);
            },
            child: Center(
              child: SvgPicture.asset(
                'assets/svg/times.svg',
                width: screenWidth * 0.025,
                height: screenHeight * 0.025,
                color: Color(0xffD60665),
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // commontext(
              //   text: 'Cart',
              //   fontFamily: 'Poppins',
              //   fontSize: screenWidth * 0.030,
              //   fontWeight: FontWeight.w500,
              // ),
              // commontext(
              //   text: 'Subway-Johar Town',
              //   fontFamily: 'Poppins',
              //   fontSize: screenWidth * 0.025,
              //   fontWeight: FontWeight.w200,
              // ),
              CommonText(
                  text: 'Cart',
                  Styles: Styles.textstyleHeaderfour(context,
                      fontWeight: FontWeight.w500)),
              CommonText(
                  text: 'Subway-Johar Town',
                  Styles: Styles.textstyleHeaderthree(context,
                      fontWeight: FontWeight.w200))
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //rider container components...
              RiderContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05, right: screenWidth * 0.05),
                    //bannercart components..
                    child: BannerCart(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                  ),
                  SizedBox(
                    height: screenHeight * 0.15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: screenWidth * 0.05, left: screenWidth * 0.05),
                    //subtotal components..
                    child: SubTotal(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/bookmark.svg',
                          width: screenWidth * 0.03,
                          height: screenHeight * 0.03,
                          color: Color(0xffD60665),
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        // commontext(
                        //     text: 'Apply a voucher',
                        //     color: Color(0xffD60665),
                        //     fontSize: screenWidth * 0.04,
                        //     fontWeight: FontWeight.bold),
                        CommonText(
                            text: AppStrings.apply,
                            Styles: Styles.textstyleHeaderone(context))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.25,
                  ),
                  //Total Container..
                  TotalContainer(
                      screenHeight: screenHeight, screenWidth: screenWidth)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
