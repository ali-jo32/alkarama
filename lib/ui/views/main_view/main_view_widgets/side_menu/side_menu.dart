// import 'package:alkarama_project/ui/shared/utils.dart';
// import 'package:alkarama_project/ui/views/main_view/favorite_view/favorite_view.dart';
// import 'package:alkarama_project/ui/views/main_view/home_view/home_view.dart';
// import 'package:alkarama_project/ui/views/main_view/main_view_widgets/side_menu/side_menu_controller.dart';
// // import 'package:alkarama_project/ui/views/main_view/home_view/home_view.dart';
// import 'package:alkarama_project/ui/views/main_view/notification_view/notification_view.dart';
// import 'package:alkarama_project/ui/views/main_view/settings_view/settings_view.dart';
// import 'package:flutter/material.dart';
// import 'package:alkarama_project/core/data/repository/Shared_Preferences_repository.dart';
// import 'package:alkarama_project/ui/shared/colors.dart';
// import 'package:alkarama_project/ui/views/main_view/main_view_widgets/side_item/side_item.dart';
// import 'package:get/get.dart';

// class SideMenu extends StatelessWidget {
//   SideMenu({super.key});
//   SideMenuController controller = Get.put(SideMenuController());

//   @override
//   Widget build(BuildContext context) {
//     // final size = MediaQuery.of(context).size;
//     return Container(
//       width: screenWidth(1.3),
//       color: AppColors.whiteColor,
//       child: Padding(
//         padding: EdgeInsetsDirectional.only(
//             bottom: screenWidth(3),
//             start: screenWidth(20),
//             end: screenWidth(20)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Image.asset(
//                   "assets/images/pngs/person.png",
//                   width: screenWidth(3),
//                   height: screenWidth(3),
//                 ),
//                 SizedBox(
//                   height: screenWidth(35),
//                 ),
//                 Text(
//                   "Sunny Vo",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "vctung@outlook.com",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             SideItem(
//                 icon: Icons.home_outlined,
//                 title: 'Home',
//                 onTap: () {
//                   controller.home();
//                 }),
//             SideItem(
//                 icon: Icons.settings_outlined,
//                 title: 'Settings',
//                 onTap: () {
//                   controller.settings();
//                 }),
//             SideItem(
//                 icon: Icons.notifications_outlined,
//                 title: 'Notifications',
//                 onTap: () {
//                   controller.notifications();
//                 }),
//             SideItem(
//                 icon: Icons.call_to_action_outlined,
//                 title: 'Categories',
//                 onTap: () {}),
//             SideItem(
//                 icon: Icons.my_library_books_outlined,
//                 title: 'My orders',
//                 onTap: () {}),
//             SideItem(
//                 icon: Icons.help_outline_outlined,
//                 title: 'Help & FAQ',
//                 needClose: true,
//                 onTap: () {}),
//             SideItem(
//                 icon: Icons.person,
//                 title: 'Logout',
//                 onTap: () {
//                   controller.logout();
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
