import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:alkarama_project/ui/shared/colors.dart';

class CustomTextfield extends StatelessWidget {
  final IconData? preIcon;
  final String hintText;
  final IconData? suffIcon;
  final Color? suffColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  const   CustomTextfield({
    super.key,
    this.preIcon,
    required this.hintText,
    this.suffIcon,
    this.suffColor,
    this.controller,
    this.validator,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return TextFormField(
      obscureText: obscureText,
      obscuringCharacter: "*",
      validator: validator,
      controller: controller,
      style: TextStyle(color: AppColors.whiteColor),
      decoration: InputDecoration(
          // prefixIcon: Icon(
          //   preIcon,
          //   color: Colors.grey,
          // ),

          suffixIcon: suffIcon != null
              ? Icon(
                  suffIcon,
                  color: suffColor ?? AppColors.blueColor,
                )
              : SizedBox(),
          fillColor: AppColors.blackColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.whiteColor),
          contentPadding: EdgeInsets.symmetric(
              horizontal: screenWidth(20), vertical: screenWidth(20))
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(width: 3, color: AppColors.blueColor),
          //     borderRadius: BorderRadius.circular(10)),
          // enabledBorder: OutlineInputBorder(
          //     borderSide: BorderSide(width: 3, color: Colors.grey),
          //     borderRadius: BorderRadius.circular(10)),
          ),
    );
  }
}
