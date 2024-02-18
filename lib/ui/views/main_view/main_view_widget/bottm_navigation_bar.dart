import 'package:flutter/material.dart';
import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widget/nav_item.dart';

enum BottomNavigationEnum {
  HOME,
  RESULTES,
  MATCHES,
  ABOUTCLUP,
  MEUSIAM,
}

class CustomBottmNavigation extends StatefulWidget {
  final BottomNavigationEnum selectedView;
  final Function(BottomNavigationEnum, int) onTap;

  const CustomBottmNavigation({
    super.key,
    required this.selectedView,
    required this.onTap,
  });

  @override
  State<CustomBottmNavigation> createState() => _CustomBottmNavigationState();
}

class _CustomBottmNavigationState extends State<CustomBottmNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(60),
      height: screenWidth(4.6),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14))),
              height: screenWidth(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.MEUSIAM, 0);
                    },
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.MEUSIAM,
                    svgData: 'assets/images/svgs/ic_museum.svg',
                    text: 'المتحف',
                    svg: true,
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.ABOUTCLUP, 1);
                    },
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.ABOUTCLUP,
                    svgData: 'assets/images/svgs/ic-improvement.svg',
                    text: 'عن النادي',
                    svg: true,
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.MATCHES, 2);
                    },
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.MATCHES,
                    text: 'المبارايات  ',
                    svgData: '',
                    svg: false,
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.RESULTES, 3);
                    },
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.RESULTES,
                    svgData: 'assets/images/svgs/ic_results.svg',
                    text: 'النتائج',
                    svg: true,
                  ),
                  NavItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.HOME, 4);
                    },
                    isSelected:
                        widget.selectedView == BottomNavigationEnum.HOME,
                    svgData: 'assets/images/svgs/ic-home.svg',
                    text: 'الرئيسية',
                    svg: true,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth(7),
              height: screenWidth(7),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/pngs/alkaramalogo.png'),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
