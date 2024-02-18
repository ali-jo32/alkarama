// import 'dart:html';

import 'package:alkarama_project/core/data/repository/Shared_Preferences_repository.dart';
import 'package:alkarama_project/core/enums/request_type.dart';
import 'package:alkarama_project/ui/shared/utils.dart';

class NetworkConfig {
  static Map<String, String> getHeaders(
      {bool? needAuth = false,
      required RequestType type,
      Map<String, String>? extraHeaders}) {
    return {
      if (needAuth!) "Authorization": "Bearer ${storage.getTokenInfo().token}",
      if (type != RequestType.GET) "Content-Type": "application/json",
      if (extraHeaders != null) ...extraHeaders,
      "Accept-Language": storage.getAppLanguage()
    };
  }
}
