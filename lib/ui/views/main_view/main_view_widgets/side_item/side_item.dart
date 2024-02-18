import 'package:e_commerce/ui/shared/utils.dart';
import 'package:e_commerce/ui/views/main_view/main_view_widgets/side_item/side_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideItem extends StatelessWidget {
  SideItemController controller = Get.put(SideItemController());
  final IconData icon;
  final String title;
  final Function onTap;
  final bool? needClose;
  SideItem(
      {super.key,
      required this.icon,
      required this.title,
      this.needClose = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          controller.tap();
        },
        child: Row(
          children: [
            Icon(
              icon,
              size: screenWidth(12.5),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: screenWidth(17)),
              child: Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ));
  }
}
