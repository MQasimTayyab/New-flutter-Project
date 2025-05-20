import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_strings.dart';
import 'package:flutter_proj/Data/common_textstyle.dart';
import 'package:flutter_proj/Presentation/common/common_asset_image.dart';

import 'package:flutter_proj/Presentation/common/common_svg.dart';
import 'package:flutter_proj/Presentation/common/common_text.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Size get preferredSize => Size(screenWidth, screenHeight * 0.07);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.030;
    double paddingRight = screenWidth * 0.04;
    double titleFontSize = screenWidth * 0.030;
    double subTitleFontSize = screenWidth * 0.025;

    return AppBar(
      toolbarHeight: screenHeight * 0.07,
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(4, 0),
            ),
          ],
        ),
      ),
      leading: SizedBox(
        width: iconSize,
        height: iconSize,
        child: Icon(
          Icons.format_align_justify,
          color: Color(0xFFD60665),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // commontext(
          //   text: 'Home',
          //   color: Colors.pink,
          //   fontFamily: 'Poppins',
          //   fontSize: titleFontSize,
          //   fontWeight: FontWeight.bold,
          // ),
          // commontext(
          //   text: 'Johar Town Lahore',
          //   fontFamily: 'Poppins',
          //   fontSize: subTitleFontSize,
          //   fontWeight: FontWeight.w200,
          // ),

          CommonText(
              text: AppStrings.hello,
              Styles: Styles.textstyleHeaderthree(
                context,
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              )),
          CommonText(
              text: AppStrings.johar,
              Styles: Styles.textstyleHeaderfive(
                context,
                fontSize: subTitleFontSize,
                fontWeight: FontWeight.w200,
              ))
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: paddingRight),
          // child: CommonSvg(
          //   screenHeight: screenHeight * 0.025,
          //   screenWidth: screenWidth * 0.035,
          //   svgPath: 'assets/svg/heart.svg',
          //   svgcolor: Color(0xffD60665),
          // ),
          child: AssetImages(
            screenHeight: screenHeight * 0.025,
            screenWidth: screenWidth * 0.035,
            imagepath: 'assets/svg/heart.svg',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          // child: CommonSvg(
          //   svgPath: 'assets/svg/cart-arrow-down.svg',
          //   screenWidth: screenWidth * 0.035,
          //   screenHeight: screenHeight * 0.025,
          //   svgcolor: Color(0xffD60665),
          // ),
          child: AssetImages(
            screenHeight: screenHeight * 0.025,
            screenWidth: screenWidth * 0.035,
            imagepath: 'assets/svg/cart-arrow-down.svg',
          ),
        ),
      ],
    );
  }
}
