import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Text(
          "Settings",
          style: TextStyle(fontSize: screenWidth(4)),
        ),
      ),
    );
  }
}
