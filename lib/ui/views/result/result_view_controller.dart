import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';
import 'package:e_commerce/core/data/models/employee_model.dart';
import 'package:e_commerce/core/data/repository/employee_repositroy.dart';
import 'package:e_commerce/core/data/repository/product_repository.dart';

import '../../../../core/data/models/product_model.dart';

class ResultController extends GetxController {
  RxList<Employes> allProduct1 = <Employes>[].obs;
  @override
  void onInit() async{
    await getAllPosts();
    super.onInit();
  }

  getAllPosts() async{
   await EmployeeRepository().getAllcoach().then((value) {
      value.fold((l) => BotToast.showText(text: l), (r) {
        allProduct1.addAll(r);
      });
    });
    print(allProduct1.length);
  }
}
