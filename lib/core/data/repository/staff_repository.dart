import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/data/models/staff_model.dart';

import '../../enums/request_type.dart';
import '../../utils/network_util.dart';
import '../models/common_response.dart';
// import '../models/employee_model.dart';

class StaffRepository {
  Future<Either<String, List<Staff>>> getAllstaff() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/view/employees',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<Staff> result = [];
          commonResponse.data!.forEach(
            (element) {
              result.add(Staff.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.error);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
