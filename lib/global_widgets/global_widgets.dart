import 'package:flutter/material.dart';
import 'package:instagram/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonColor = ColorConstants.primaryBlue,
      this.havVBorder = false,
      required this.text,
      this.onTap,
      this.textColor = ColorConstants.primarWhite,
      this.verticalpadding = 0,
      this.horizontalPadding = 0});

  final Color buttonColor;
  final bool havVBorder;
  final String text;
  final Color textColor;
  final void Function()? onTap;
  final double verticalpadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding:
            EdgeInsets.symmetric(vertical: 15, horizontal: horizontalPadding),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
          border: havVBorder == true
              ? Border.all(color: ColorConstants.primaryBlack.withOpacity(.4))
              : null,
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
