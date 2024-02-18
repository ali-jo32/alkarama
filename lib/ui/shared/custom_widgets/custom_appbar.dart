import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData? icon;
  const CustomAppBar({super.key, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(5.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(screenWidth(25)),
          bottomRight: Radius.circular(screenWidth(25)),
        ),
        color: AppColors.color9,
      ),
      child: Row(
        children: [
          Image.asset("assets/images/pngs/alkaramalogo.png"),
          Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
