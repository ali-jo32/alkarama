import 'package:get/get.dart';

class SideItemController extends GetxController {
  late final Function onTap;
  late final bool? needClose;
  @override
  void tap() {
    onTap();
    if (needClose!) Get.back();
  }
}
