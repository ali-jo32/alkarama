import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/utils.dart';


class NavItem extends StatelessWidget {
  final String? svgData;
  final bool isSelected;
  final Function onTap;
  final String text;
  final bool svg;

  NavItem(
      {super.key,
      required this.isSelected,
      required this.onTap,
      required this.text,
      this.svgData,
      required this.svg});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            svg
                ? SvgPicture.asset(
                    svgData ?? '',
                    width: screenWidth(20),
                    height: screenWidth(15),
                    color: isSelected
                        ? AppColors.orangeColor
                        : AppColors.whiteColor,
                  )
                : SizedBox(
                    height: screenWidth(15),
                  ),
            Text(
              text,
              style: TextStyle(
                fontSize: screenWidth(28),
                color:
                    isSelected ? AppColors.orangeColor : AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
