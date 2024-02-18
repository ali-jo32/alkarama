import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alkarama_project/app/my_app.dart';
import 'package:alkarama_project/core/data/models/token_info.dart';
import 'package:alkarama_project/core/data/repository/auth_repository.dart';
import 'package:alkarama_project/core/data/repository/Shared_Preferences_repository.dart';
import 'package:alkarama_project/core/services/connectivity_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get.put(SharedPrefrenceRepository());
  // Get.put(ConnectivitySerivce());

  await Get.putAsync<SharedPreferences>(
    () async {
      return await SharedPreferences.getInstance();
    },
  );

  Get.lazyPut(
    () => SharedPrefrenceRepository(),
  );

  runApp(const MyApp());
}
