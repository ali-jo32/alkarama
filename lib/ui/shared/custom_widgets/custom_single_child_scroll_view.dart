import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  final String text;
  final String image1;
  final String image2;
  final String image3;
  const CustomSingleChildScrollView(
      {super.key,
      required this.text,
      required this.image1,
      required this.image2,
      required this.image3});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: screenWidth(40),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.blackColor1,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight(40),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(right: screenWidth(40)),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(image1),
              SizedBox(
                width: screenWidth(50),
              ),
              Image.asset(image2),
              SizedBox(
                width: screenWidth(50),
              ),
              Image.asset(image3),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight(30),
        )
      ],
    );
  }
}
