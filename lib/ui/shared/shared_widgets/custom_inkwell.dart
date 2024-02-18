import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomInkwell extends StatelessWidget {
  const CustomInkwell({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        width: screenWidth(1.2),
        height: screenWidth(5.4),
        decoration: BoxDecoration(
          color: Color.fromRGBO(66, 103, 178, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              start: screenWidth(15.4), top: screenWidth(15)),
          child: Text(
            "SIGN IN WITH FACEBOOK",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
