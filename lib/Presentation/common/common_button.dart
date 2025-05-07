import 'package:flutter/material.dart';
import 'package:flutter_proj/Application/Services/navigation_services.dart';
import 'package:flutter_proj/Presentation/widgets/Cart/cart.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? navigateTo;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  const CommonButton({
    required this.text,
    required this.onPressed,
    this.navigateTo,
    this.color,
    this.textColor,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigate.to(context, Cart());
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Cart()),
        // );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.5),
        ),
        backgroundColor: color,
        foregroundColor: textColor,
      ),
      child: Text(text),
    );
  }
}
