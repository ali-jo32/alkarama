import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:alkarama_project/ui/views/main_view/main_view_widgets/nav_item/nav_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:get/get.dart';

class NavItem extends StatelessWidget {
  NavItemContrlloer controller = Get.put(NavItemContrlloer());
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  NavItem(
      {super.key,
      required this.icon,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        controller.tap();
      },
      child: Container(
        decoration: BoxDecoration(
            border: isSelected
                ? Border(
                    bottom: BorderSide(
                        color: AppColors.orangeColor, width: screenWidth(60)))
                : null),
        child: Icon(
          icon,
          size: screenWidth(7.3),
          color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
        ),
      ),
    );
  }
}
