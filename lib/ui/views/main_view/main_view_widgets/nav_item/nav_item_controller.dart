import 'dart:ffi';

import 'package:get/get.dart';

class NavItemContrlloer extends GetxController {
  late final Function onTap;
  @override
  void tap() {
    onTap();
  }
}
