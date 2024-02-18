import 'package:e_commerce/ui/views/main_view/main_view_widgets/bottm_navigation_bar/bottm_navigation_bar.dart';
import 'package:get/get.dart';

class BottmController extends GetxController {
  late final Function(BottomNavigationEnum, int) onTap;
  void home() {
    onTap(BottomNavigationEnum.HOME, 0);
  }

  void favorite() {
    onTap(BottomNavigationEnum.FAVORITE, 1);
  }

  void notifications() {
    onTap(BottomNavigationEnum.NOTIFICATIONS, 2);
  }

  void settings() {
    onTap(BottomNavigationEnum.SETTINGS, 3);
  }
}
