import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';
import 'package:flutter_proj/Presentation/widgets/Cart/cart.dart';

import 'package:flutter_proj/Presentation/common/common_button.dart';
import 'package:flutter_proj/Presentation/common/common_text.dart';

import 'package:flutter_proj/Presentation/widgets/exclusive/components/banner_text.dart';
import 'package:flutter_proj/Presentation/widgets/exclusive/components/header_image.dart';

void main() {
  runApp(Exclusive());
}

class Exclusive extends StatefulWidget {
  const Exclusive({super.key});
  @override
  State<Exclusive> createState() => _ExclusiveState();
}

class _ExclusiveState extends State<Exclusive> {
  String selectedFlavor = '';
  String selectedFlavr = '';
  int _counter = 1;
  bool isSelected = false;
  int selectedIndex = -1;
  int selectedIndx = -1;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // final String value;
    // final String? groupValue;
    // final ValueChanged<String?> onChanged;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //header image and svgicon
              HeaderImage(screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //scaffold colum
                    //banner exclusive subway deal 1 Components..

                    BannerTextExclusive(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: screenWidth * 0.002,
                                  color: Colors.grey.withOpacity(0.5)))),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    // this coloum choose flavor and drinks
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // commontext(
                            //     text: 'Choose Your Flavor',
                            //     fontSize: screenWidth * 0.032,
                            //     fontFamily: 'Poppins',
                            //     fontWeight: FontWeight.w500

                            //     ),
                            CommonText(
                                text: AppStrings.chooseflavor,
                                Styles: Styles.textstyleHeaderfour(context,
                                    fontWeight: FontWeight.w500)),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffB7D6F4),
                                    borderRadius: BorderRadius.circular(15)),
                                height: screenHeight * 0.02,
                                width: screenWidth * 0.15,
                                child: Center(
                                  child: CommonText(
                                      text: AppStrings.onerequied,
                                      Styles: Styles.textstyleHeaderfive(
                                          context,
                                          fontWeight: FontWeight.w500)),
                                ))
                          ],
                        ),
                        CommonText(
                            text: AppStrings.select,
                            Styles: Styles.textstyleHeaderfour(context)),

                        // Column(
                        //   children: [
                        //     ListView.builder(
                        //       shrinkWrap: true,
                        //       itemCount: chooseFlaoure.length,
                        //       itemBuilder: (context, index) => Column(
                        //         children: [
                        //           RadioListTile(
                        //             fillColor: WidgetStatePropertyAll(
                        //                 Color(0xffD60665)),
                        //             visualDensity:
                        //                 const VisualDensity(vertical: -4),
                        //             activeColor: Color(0xffD60665),
                        //             title: Text(chooseFlaoure[index]),
                        //             value: chooseFlaoure[index],
                        //             groupValue: selectedFlavor,
                        //             onChanged: (value) {
                        //               setState(() {
                        //                 selectedFlavor = value.toString();
                        //               });
                        //             },
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),

                        // crossAxisAlignment: CrossAxisAlignment.start,
                        //choose flavor components....
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 0;
                                  selectedFlavor = 'Chicken Tikka';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndex == 0 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: 'Chicken Tikka',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.chickentikka,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 1;
                                  selectedFlavor = 'Chicken Tikka';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndex == 1 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: ' Chicken Teriyaki',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.chickenteriyaki,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 2;
                                  selectedFlavor = 'Chicken Fajita';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndex == 2 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: ' Chicken Fajita',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.chickenfajita,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 3;
                                  selectedFlavor = 'BBQ';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndex == 3 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: ' BBQ',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.bbq,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // commontext(
                            //     text: 'Choose Your Soft Drink',
                            //     fontSize: screenWidth * 0.032,
                            //     fontFamily: 'Poppins',
                            //     fontWeight: FontWeight.w500),
                            CommonText(
                                text: AppStrings.choosedrink,
                                Styles: Styles.textstyleHeaderfour(context,
                                    fontWeight: FontWeight.w500)),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffB7D6F4),
                                    borderRadius: BorderRadius.circular(15)),
                                height: screenHeight * 0.02,
                                width: screenWidth * 0.15,
                                child: Center(
                                  // child: commontext(
                                  //   text: '1 Required',
                                  //   fontFamily: 'Poppins',
                                  //   fontSize: screenWidth * 0.02,
                                  //   fontWeight: FontWeight.w500,
                                  // ),
                                  child: CommonText(
                                      text: AppStrings.onerequied,
                                      Styles: Styles.textstyleHeaderfive(
                                          context,
                                          fontWeight: FontWeight.w500)),
                                ))
                          ],
                        ),
                        // commontext(
                        //   text: 'Select',
                        //   fontSize: screenWidth * 0.03,
                        //   color: Color(0xff000000).withOpacity(0.7),
                        //   fontFamily: 'Poppins',
                        // ),
                        CommonText(
                            text: AppStrings.select,
                            Styles: Styles.textstyleHeaderfour(context)),
                        //choose drinks flavors........
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndx = 0;
                                  selectedFlavr = 'Pepsi';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndx == 0 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: 'Pepsi',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.pepsi,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndx = 1;
                                  selectedFlavr = '7up';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndx == 1 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: '7up',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.sevenup,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndx = 2;
                                  selectedFlavr = 'Mirinda';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndx == 2 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: 'Mirinda',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.mirinda,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndx = 3;
                                  selectedFlavr = 'Mountain drew';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffD60665),
                                        width: selectedIndx == 3 ? 5.0 : 2.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // commontext(
                                        //     text: 'Mountain drew',
                                        //     fontSize: screenWidth * 0.03,
                                        //     fontFamily: 'Poppins',
                                        //     fontWeight: FontWeight.w500),
                                        // commontext(
                                        //   text: 'Rs.0.00',
                                        //   fontSize: screenWidth * 0.03,
                                        //   color: Color(0xff000000)
                                        //       .withOpacity(0.6),
                                        //   fontFamily: 'Poppins',
                                        // ),
                                        CommonText(
                                            text: AppStrings.mountaindrew,
                                            Styles: Styles.textstyleHeaderfour(
                                                context,
                                                fontWeight: FontWeight.w500)),
                                        CommonText(
                                            text: AppStrings.rszero,
                                            Styles: Styles.textstyleHeaderfour(
                                                context))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: screenWidth * 0.003,
                            color: Colors.grey.withOpacity(0.3)))),
              ),
              // increment buttons and add to cart button..........
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_counter > 1) {
                              setState(() {
                                _counter--;
                              });
                            }
                          },
                          child: Container(
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xFFDADADA),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: screenWidth * 0.09,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _counter++;
                            });
                          },
                          child: Container(
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xFFD60665),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.045,
                      child: CommonButton(
                        text: 'Add to cart',
                        onPressed: () {},
                        borderRadius: 8,
                        color: Colors.pink,
                        textColor: Color(0xffffffff),
                        navigateTo: Cart(),
                        // style: ElevatedButton.styleFrom(
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(8),
                        //   ),
                        //   backgroundColor: Colors.pink,
                        //   foregroundColor: Colors.white,
                        // ),
                        // // child: commontext(
                        //     text: 'Add to cart',
                        //     fontSize: screenWidth * 0.035,
                        //     fontFamily: 'Poppins',
                        //     fontWeight: FontWeight.bold)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
