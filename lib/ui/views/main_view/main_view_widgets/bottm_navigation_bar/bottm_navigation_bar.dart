import 'package:alkarama_project/ui/views/main_view/main_view_widgets/bottm_navigation_bar/bottm_controller.dart';
import 'package:flutter/material.dart';
import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/views/main_view/main_view_widgets/nav_item/nav_item.dart';
import 'package:get/get.dart';

enum BottomNavigationEnum {
  HOME,
  NOTIFICATIONS,
  FAVORITE,
  SETTINGS,
}

class CustomBottmNavigation extends StatefulWidget {
  final BottomNavigationEnum selectedView;
  final Function(BottomNavigationEnum, int) onTap;
  const CustomBottmNavigation(
      {super.key, required this.selectedView, required this.onTap});

  @override
  State<CustomBottmNavigation> createState() => _CustomBottmNavigationState();
}

class _CustomBottmNavigationState extends State<CustomBottmNavigation> {
  BottmController controller = Get.put(BottmController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
              onTap: () {
                controller.home();
              },
              icon: Icons.home_outlined,
              isSelected: widget.selectedView == BottomNavigationEnum.HOME),
          NavItem(
              onTap: () {
                controller.favorite();
              },
              icon: Icons.favorite_outline,
              isSelected: widget.selectedView == BottomNavigationEnum.FAVORITE),
          NavItem(
              onTap: () {
                controller.notifications();
              },
              icon: Icons.notification_add_outlined,
              isSelected:
                  widget.selectedView == BottomNavigationEnum.NOTIFICATIONS),
          NavItem(
              onTap: () {
                controller.settings();
              },
              icon: Icons.settings_outlined,
              isSelected: widget.selectedView == BottomNavigationEnum.SETTINGS),
        ],
      ),
    );
  }
}
