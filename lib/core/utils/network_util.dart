import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:e_commerce/core/enums/request_type.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:e_commerce/ui/views/login_view/login_view.dart';

class NetworkUtil {
  static String baseUrl = 'in.cliprz.org';

  static Future sendRequest({
    required RequestType type,
    required String route,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    var url = Uri.https(baseUrl, route, params);

    http.Response response;

    switch (type) {
      case RequestType.POST:
        response =
            await http.post(url, body: jsonEncode(body), headers: headers);
        break;
      case RequestType.GET:
        response = await http.get(url, headers: headers);
        break;
      case RequestType.DELETE:
        response =
            await http.delete(url, body: jsonEncode(body), headers: headers);
        break;
      case RequestType.PUT:
        response =
            await http.put(url, body: jsonEncode(body), headers: headers);
        break;
    }

    if (response.statusCode == 401) {
      Get.to(LoginView());
      return;
    }

    Map<String, dynamic> jsonResponse = {};
    dynamic result;
    String decodedBody = Utf8Codec().decode(response.bodyBytes);

    try {
      result = jsonDecode(decodedBody);
    } catch (e) {}

    jsonResponse.putIfAbsent(
        'response', () => result ?? {'error': decodedBody});

    jsonResponse.putIfAbsent('statusCode', () => response.statusCode);

    return jsonResponse;
  }
}
