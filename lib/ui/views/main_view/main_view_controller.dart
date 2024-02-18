import 'package:e_commerce/ui/views/main_view/main_view_widgets/bottm_navigation_bar/bottm_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainViewController extends GetxController {
  PageController controller = PageController();
  BottomNavigationEnum selecte = BottomNavigationEnum.HOME;

  GlobalKey<ScaffoldState> scafolldKey = GlobalKey<ScaffoldState>();
  @override
  void onInit() {
    // BotToast.showText(
    //     duration: Duration(seconds: 5), text: widget.tokenUnfo.token ?? '');
    super.onInit();
  }

  void selec() {
    (selectedView, index) {
      selecte = selectedView;
      controller.jumpToPage(index);
      //! here notify onTap in navitem
    };
  }

  void scafolld() {
    scafolldKey.currentState!.openDrawer();
  }
}
