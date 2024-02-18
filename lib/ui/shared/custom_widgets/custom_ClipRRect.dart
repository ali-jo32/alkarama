import 'package:e_commerce/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomClipRRect extends StatelessWidget {
  final String image;
  const CustomClipRRect({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              image,
              width: screenWidth(1.2),
            ),
            
          );
    // Container(
    //   width: screenWidth(2.6),
    //   height: screenHeight(2.5),
    //   decoration: BoxDecoration(
    //       // color: Colors.red,
    //       image: DecorationImage(image: NetworkImage(image)),
    //       borderRadius: BorderRadius.all(Radius.circular(screenWidth(30)))),
    // );
  }
}
