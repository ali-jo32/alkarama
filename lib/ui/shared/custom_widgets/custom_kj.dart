import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/shared_widgets/custom_text.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerText extends StatelessWidget {
  final String text;
  final double? widthone;
  final double? widthtwo;
  final double? widththree;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  const CustomContainerText({
    super.key,
    required this.text,
    this.color1,
    this.widthone,
    this.widthtwo,
    this.widththree, this.color2, this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.only(start: screenWidth(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
              text: text,
              styleType: TextStyleType.TITLE,
              textColor: AppColors.blackColor,
              fontWeight: FontWeight.w400),
          Row(
            children: [
              Container(
                height: screenWidth(70),
                width: widthone ?? screenWidth(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: color1 ?? AppColors.blueColor,
                ),
              ),
              SizedBox(
                width: screenWidth(200),
              ),
              Container(
                height: screenWidth(70),
                width: widthtwo ?? screenWidth(11),
                decoration: BoxDecoration(
                  color: color2 ?? AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: screenWidth(200),
              ),
              Container(
                height: screenWidth(70),
                width: widththree ?? screenWidth(8.5),
                decoration: BoxDecoration(
                  color: color3 ?? AppColors.blueColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          )
        ]));
  }
}
