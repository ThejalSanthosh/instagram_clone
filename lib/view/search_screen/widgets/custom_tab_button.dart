import 'package:flutter/material.dart';
import 'package:instagram/core/constants/color_constants.dart';

class CustomTabButton extends StatelessWidget {
  const CustomTabButton({super.key, this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border:
                Border.all(color: ColorConstants.primaryBlack.withOpacity(.1))),
        child: Row(
          children: [
            icon != null ? Icon(icon) : SizedBox(),
            SizedBox(
              width: 5,
            ),
            Text("Data")
          ],
        ),
      ),
    );
  }
}
