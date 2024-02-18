import 'package:get/get.dart';
import 'package:e_commerce/core/services/connectivity_service.dart';
import 'package:e_commerce/ui/shared/utils.dart';

class MyAppController extends GetxController {
  

  @override
  void onInit() {
    checkConnection();
    super.onInit();
  }

  void checkConnection() {
    // connectivitySerivce.connectivityStatusController.stream.listen((event) {
    //   isOnline = event == ConnectivityStatus.ONLINE;

    //   //! if (event == ConnectivityStatus.ONLINE)
    //   //!   isOnline.value = true;
    //   //! else
    //   //!   isOnline.value = false;
    // }
    // );
  }
}
