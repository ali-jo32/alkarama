import 'package:alkarama_project/core/data/models/staff_model.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:alkarama_project/core/data/models/staff_model.dart';
import 'package:alkarama_project/core/data/repository/staff_repository.dart';
import 'package:get/get.dart';
// import 'package:alkarama_project/core/data/models/employee_model.dart';
// import 'package:alkarama_project/core/data/repository/employee_repositroy.dart';
// import 'package:alkarama_project/core/data/repository/product_repository.dart';

// import '../../../../core/data/models/product_model.dart';

class meusiamController extends GetxController {
  RxList<Staff> allStaff = <Staff>[].obs;
  @override
  void onInit() async {
    await getAllstaff();
    super.onInit();
  }

  getAllstaff() async {
    await StaffRepository().getAllstaff().then((value) {
      value.fold((l) => BotToast.showText(text: l), (r) {
        allStaff.addAll(r);
      });
    });
    print(allStaff.length);
  }
}
