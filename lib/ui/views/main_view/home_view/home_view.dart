// import 'dart:io';

// import 'package:alkarama_project/ui/shared/colors.dart';
// import 'package:alkarama_project/ui/shared/utils.dart';
// import 'package:alkarama_project/ui/views/main_view/home_view/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:alkarama_project/ui/shared/colors.dart';
// import 'package:image_picker/image_picker.dart';

// class HomeView extends StatefulWidget {
//   final Function onTap;
//   const HomeView({super.key, required this.onTap});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   File? selectedImage;

//   HomeController controller = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Obx(
//           () => Icon(
//             controller.isOnline.value ? Icons.wifi : Icons.wifi_off,
//             color: controller.isOnline.value ? Colors.green : Colors.red[300],
//             size: 60,
//           ),
//         ),
//         Stack(
//           children: [
//             InkWell(
//                 onTap: () {},
//                 child: Container(
//                   width: screenWidth(3.6),
//                   height: screenWidth(3.6),
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                           width: screenWidth(150), color: AppColors.blackColor),
//                       borderRadius: BorderRadius.circular(50),
//                       image: selectedImage != null
//                           ? DecorationImage(
//                               image: FileImage(selectedImage!),
//                               fit: BoxFit.cover)
//                           : null),
//                   child: selectedImage == null ? Icon(Icons.image) : null,
//                 )),
//             Padding(
//               padding: EdgeInsetsDirectional.only(
//                   top: screenWidth(5), start: screenWidth(5)),
//               child: InkWell(
//                   onTap: () {
//                     widget.onTap();
//                   },
//                   // onTap: selectedImage == null
//                   // ? () {
//                   //         setState(() {
//                   //           showOption = true;
//                   //         });
//                   //       }
//                   //     : null,
//                   child: Container(
//                     width: screenWidth(12),
//                     height: screenWidth(12),
//                     color: AppColors.redColor,
//                     child: Icon(Icons.edit),
//                   )),
//             )
//           ],
//         ),
//         if (controller.showOption.value)
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () async {
//                   controller.one();
//                 },
//                 child: Container(
//                   width: 80,
//                   height: 40,
//                   color: AppColors.blueColor,
//                   child: Text(
//                     'Camera',
//                     style: TextStyle(fontSize: 20, color: AppColors.whiteColor),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               InkWell(
//                 onTap: () {
//                   controller.ont();
//                 },
//                 child: Container(
//                   width: 80,
//                   height: 40,
//                   color: AppColors.blueColor,
//                   child: Text(
//                     'Gallery',
//                     style: TextStyle(fontSize: 20, color: AppColors.whiteColor),
//                   ),
//                 ),
//               ),
//             ],
//           )
//       ],
//     );
//   }
// }
