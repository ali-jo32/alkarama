import 'package:dartz/dartz.dart';
import 'package:alkarama_project/core/data/models/common_response.dart';
import 'package:alkarama_project/core/data/models/token_info.dart';
import 'package:alkarama_project/core/data/network/network_config.dart';
import 'package:alkarama_project/core/enums/request_type.dart';
import 'package:alkarama_project/core/utils/network_util.dart';

class AuthRepository {
  Future<Either<String, TokenInfo>> login({
    required String username,
    required String password,
  }) async {
    try {
      return NetworkUtil.sendRequest(
          type: RequestType.POST,
          route: 'auth/login',
          body: {
            'username': username,
            'password': password,
          },
          headers: NetworkConfig.getHeaders(
            
            type: RequestType.POST,
            extraHeaders: {
              "timeZone": "+03",
            },
          )).then((value) {
        CommonResponse<Map<String, dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          return Right(TokenInfo.fromJson(commonResponse.data ?? {}));
        } else {
          return Left(commonResponse.error);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
