import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce/app/my_app.dart';
import 'package:e_commerce/core/data/models/token_info.dart';
import 'package:e_commerce/core/data/repository/auth_repository.dart';
import 'package:e_commerce/core/data/repository/Shared_Preferences_repository.dart';
import 'package:e_commerce/core/services/connectivity_service.dart';

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
