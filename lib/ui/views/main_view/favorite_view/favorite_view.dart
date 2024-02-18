import 'package:alkarama_project/core/transliation/app_transliation.dart';
import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Text(
          tr('Key_Favorite'),
          style: TextStyle(fontSize: screenWidth(4)),
        ),
      ),
    );
  }
}
