// import 'package:get/get.dart';
// import 'package:alkarama_project/core/services/connectivity_service.dart';
// import 'package:alkarama_project/ui/shared/utils.dart';
// import 'package:image_picker/image_picker.dart';

// class HomeController extends GetxController {
//   RxBool isOnline = true.obs;
//   RxBool showOption = false.obs;
//   late RxString selectedImage;

//   @override
//   void onInit() {
//     checkConnection();
//     super.onInit();
//   }

//   void checkConnection() {
//     connectivitySerivce.connectivityStatusController.stream.listen((event) {
//       isOnline.value = event == ConnectivityStatus.ONLINE;

//       //! if (event == ConnectivityStatus.ONLINE)
//       //!   isOnline.value = true;
//       //! else
//       //!   isOnline.value = false;
//     });
//   }

//   void one() async {
//     await ImagePicker().pickImage(source: ImageSource.camera).then(
//       (value) {
//         if (value != null) selectedImage = (value.path) as RxString;
//       },
//     );

//     showOption = false.obs;
//   }

//   void ont() {
//     ImagePicker().pickImage(source: ImageSource.gallery).then(
//       (value) {
//         if (value != null)
//           selectedImage = selectedImage(value.path) as RxString;
//         showOption = false.obs;
//       },
//     );
//   }
// }
