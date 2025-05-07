import 'package:flutter/material.dart';
import 'package:flutter_proj/Application/Services/navigation_services.dart';
import 'package:flutter_proj/Presentation/common/common_svg.dart';
import 'package:flutter_proj/Presentation/widgets/fooddeals/food_deals.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
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
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/exclusive.png',
              ),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, Fooddeals());
                    // Navigate.pop(context);
                  },
                  child: Container(
                    width: screenWidth * 0.08,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF), shape: BoxShape.circle),

                    child: Center(
                      child: CommonSvg(
                        svgPath: 'assets/svg/Vector.svg',
                        screenWidth: screenWidth * 0.02,
                        screenHeight: screenHeight * 0.02,
                        svgcolor: Color(0xffD60665),
                      ),
                    ),

                    // child: IconButton(
                    //   icon: Icon(
                    //     size: screenWidth * 0.035,
                    //     Icons.arrow_back,
                    //     color: Color(0xffD60665),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    // )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
