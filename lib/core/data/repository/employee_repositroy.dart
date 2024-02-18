import 'package:dartz/dartz.dart';

import '../../enums/request_type.dart';
import '../../utils/network_util.dart';
import '../models/common_response.dart';
import '../models/employee_model.dart';

class EmployeeRepository {
  Future<Either<String, List<Employes>>> getAllcoach() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/view/clubs',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<Employes> result = [];
          commonResponse.data!.forEach(
            (element) {
              result.add(Employes.fromJson(element));
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
