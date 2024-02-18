// import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:alkarama_project/core/data/models/token_info.dart';
import 'package:alkarama_project/ui/views/main_view/main_view_controller.dart';
import 'package:alkarama_project/ui/views/main_view/main_view_widgets/bottm_navigation_bar/bottm_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/views/main_view/favorite_view/favorite_view.dart';
import 'package:alkarama_project/ui/views/main_view/home_view/home_view.dart';
import 'package:alkarama_project/ui/views/main_view/notification_view/notification_view.dart';
import 'package:alkarama_project/ui/views/main_view/main_view_widgets/side_menu/side_menu.dart';
// import 'package:alkarama_project/ui/views/main_view/notification_view/notification_view.dart';
import 'package:alkarama_project/ui/views/main_view/settings_view/settings_view.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  MainViewController controller = Get.put(MainViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scafolldKey,
        drawer: SideMenu(),
        bottomNavigationBar: CustomBottmNavigation(
          onTap: (p0, p1) {
            controller.selec();
          },
          selectedView: controller.selecte,
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.controller,
          children: [
            // HomeView(
            //   onTap: () {
            //     controller.scafolld();
            //   },
            // ),
            FavoriteView(),
            NotificationView(),
            SettingsView()
          ],
          // onPageChanged: ((index) {
          //   if (index == 0)
          //     setState(() {
          //       selecte = BottomNavigationEnum.HOME;
          //     });
          //   if (index == 1)
          //     setState(() {
          //       selecte = BottomNavigationEnum.FAVORITE;
          //     });
          //   if (index == 2)
          //     setState(() {
          //       selecte = BottomNavigationEnum.NOTIFICATIONS;
          //     });
          //   if (index == 3)
          //     setState(() {
          //       selecte = BottomNavigationEnum.SETTINGS;
          //     });
          // }),
        ),
      ),
    );
  }
}
