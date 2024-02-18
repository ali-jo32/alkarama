import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:alkarama_project/ui/views/landing_view/landing_view.dart';
import 'package:alkarama_project/ui/views/main_view/favorite_view/favorite_view.dart';
import 'package:alkarama_project/ui/views/main_view/notification_view/notification_view.dart';
import 'package:alkarama_project/ui/views/main_view/settings_view/settings_view.dart';
import 'package:get/get.dart';

class SideMenuController extends GetxController {
  @override
  void home() {
    storage.setLoggedIn(false);
    Get.to(
      FavoriteView(),
    );
  }

  void settings() {
    storage.setLoggedIn(false);
    Get.to(
      SettingsView(),
    );
  }

  void notifications() {
    storage.setLoggedIn(false);
    Get.to(
      NotificationView(),
    );
  }

  void logout() {
    storage.setLoggedIn(false);
    Get.to(
      LandingView(),
    );
  }
}
