// import 'dart:html';

import 'package:bot_toast/bot_toast.dart';
import 'package:alkarama_project/core/transliation/app_transliation.dart';
import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:alkarama_project/ui/views/alkarama_project/about_clup/about_clup_view.dart';
import 'package:alkarama_project/ui/views/alkarama_project/meusiam_clup/meusiam_clup_view.dart';
import 'package:alkarama_project/ui/views/player_and_admins/player_admins_view.dart';

// import 'package:alkarama_project/ui/views/post/post_view/post_view.dart';

import 'package:alkarama_project/ui/views/result/result_view.dart';
// import 'package:alkarama_project/ui/views/login_view/login_view.dart';

// import 'package:alkarama_project/ui/views/test_Challange.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: getLocal(),
      translations: AppTranslation(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [BotToastNavigatorObserver()],

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        primarySwatch: Colors.blue,
      ),
      home: const MeusiamClupView(),
    );
  }
}

Locale getLocal() {
  String langCode = storage.getAppLanguage();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else if (langCode == 'tr')
    return Locale('tr', 'TR');
  else
    return Locale('fr', 'FR');
}
