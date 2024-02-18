import 'package:e_commerce/core/transliation/app_transliation.dart';
import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/utils.dart';
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
