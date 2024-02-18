import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/custom_widgets/custom_ClipRRect.dart';
import 'package:e_commerce/ui/shared/custom_widgets/custom_appbar.dart';
import 'package:e_commerce/ui/shared/custom_widgets/custom_kj.dart';
import 'package:e_commerce/ui/shared/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:e_commerce/ui/shared/utils.dart';
import 'package:e_commerce/ui/views/alkarama_project/about_clup/about_clup_view.dart';
import 'package:e_commerce/ui/views/alkarama_project/meusiam_clup/meusiam_controller.dart';
import 'package:e_commerce/ui/views/player_and_admins/player_admins_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class MeusiamClupView extends StatelessWidget {
  const MeusiamClupView({super.key});

  @override
  Widget build(BuildContext context) {
    meusiamController controller = Get.put(meusiamController());
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            CustomAppBar(text: "المتحف"),
            SizedBox(
              height: screenHeight(30),
            ),
            Column(
              children: [
                Obx(
                  () {
                    return controller.allStaff.isEmpty
                        ? SpinKitCircle(
                            color: AppColors.orangeColor,
                          )
                        : controller.allStaff.length == 0
                            ? Text('No Data')
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                // scrollDirection: Axis.vertical,
                                itemCount: controller.allStaff.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(
                                      //   builder: (context) {
                                      //     return PostDetailsView(
                                      //         post: controller.allPost[index]);
                                      //   },
                                      // ));
                                    },
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: screenWidth(10),
                                          end: screenWidth(10),
                                          bottom: screenWidth(30)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                screenWidth(8),
                                              ),
                                              topRight: Radius.circular(
                                                screenWidth(8),
                                              ),
                                            ), // BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 236, 236, 236)),
                                        width: screenWidth(10),
                                        height: screenWidth(2.5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: screenWidth(5),
                                              child: Text(
                                                maxLines: 5,
                                                controller
                                                        .allStaff[index].name ??
                                                    '',
                                                style: TextStyle(
                                                    fontSize: screenWidth(30)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      start: screenWidth(5)),
                                              child: Container(
                                                width: screenWidth(2),
                                                height: screenWidth(3),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      maxLines: 5,
                                                      controller.allStaff[index]
                                                              .work ??
                                                          '',
                                                      style: TextStyle(
                                                          fontSize:
                                                              screenWidth(30)),
                                                    ),
                                                    // Image.network(controller
                                                    //     .allStaff[index].image ??
                                                    // ''),
                                                  ],
                                                ),

                                                // Image.network(controller
                                                //         .allStaff[index].image ??
                                                //     ''),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
