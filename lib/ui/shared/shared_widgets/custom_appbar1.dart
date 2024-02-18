import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/utils.dart';

class CustomAppBar extends StatelessWidget {
  final bool svgNeed;
  final String textdata;
  const CustomAppBar(
      {super.key, required this.svgNeed, required this.textdata});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      height: screenWidth(5.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          svgNeed
              ? Container(
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/images/svgs/ic-home.svg',
                      width: screenWidth(20),
                      height: screenWidth(15),
                      color: AppColors.whiteColor,
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.whiteColor,
                    ),
                  ]),
                )
              : SizedBox(),
          Container(
              child: Row(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(17)),
                child: Text(
                  textDirection: TextDirection.ltr,
                  textdata,
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: screenWidth(23),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: screenWidth(8),
                  child: Image.asset('assets/images/pngs/alkaramalogo.png')),
            ],
          ))
        ],
      ),
    );

    // Container(
    //   decoration: BoxDecoration(
    //       color: AppColors.blueColor,
    //       borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(10),
    //           bottomRight: Radius.circular(10))),
    //   height: screenWidth(5.5),
    //   child: Row(
    //     //mainAxisSize: MainAxisSize.min,
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       // SizedBox(
    //       //     width: screenWidth(1.4),
    //       // child: svgNeed
    //       //     ?

    //       Row(
    //         children: [
    //           SvgPicture.asset(
    //             'assets/images/svgs/ic-home.svg',
    //             width: screenWidth(20),
    //             height: screenWidth(15),
    //             color: AppColors.whiteColor,
    //           ),
    //           Icon(
    //             Icons.arrow_back_ios_new,
    //             color: AppColors.whiteColor,
    //           ),
    //         ],
    //       ),

    //       // Expanded(
    //       //   child: Icon(
    //       //     Icons.arrow_back_ios_new,
    //       //     color: AppColors.whiteColor,
    //       //   ),
    //       // ),

    //       // : null),
    //       Container(
    //         width: screenWidth(3),
    //         height: screenWidth(6),
    //         margin: EdgeInsetsDirectional.only(
    //           top: screenWidth(18),
    //           start: screenWidth(2),
    //         ),
    //         child: Row(
    //           children: [
    //             Padding(
    //               padding: EdgeInsetsDirectional.only(top: screenWidth(26)),
    //               child: Text(
    //                 textDirection: TextDirection.ltr,
    //                 textdata,
    //                 style: TextStyle(
    //                     color: AppColors.whiteColor,
    //                     fontSize: screenWidth(23),
    //                     fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //             Image.asset('assets/images/pngs/alkaramalogo.png'),
    //           ],
    //         ),
    //       ),
    //       // Container(
    //       //     width: screenWidth(7),
    //       //     height: screenWidth(7),
    //       //     child: Image.asset('assets/images/pngs/alkaramalogo.png')),
    //     ],
    //   ),
    // );
  }
}
