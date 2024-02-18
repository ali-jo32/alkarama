import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:e_commerce/ui/shared/colors.dart';
import 'package:e_commerce/ui/shared/shared_widgets/custom_appbar1.dart';
import 'package:e_commerce/ui/shared/utils.dart';

import 'result_view_controller.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  ResultController controller = Get.put(ResultController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(
            svgNeed: false,
            textdata: 'النتائج',
          ),
          preferredSize: Size.fromHeight(100)),
      body: Column(
        children: [
          Center(child: Text('result')),
          Obx(
            () {
              return controller.allProduct1.isEmpty
                  ? SpinKitCircle(
                      color: AppColors.orangeColor,
                    )
                  : controller.allProduct1.length == 0
                      ? Text('No Data')
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          // scrollDirection: Axis.vertical,
                          itemCount: controller.allProduct1.length,
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
                                padding:
                                    EdgeInsetsDirectional.all(screenWidth(60)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 236, 236, 236)),
                                  width: screenWidth(1.9),
                                  height: screenWidth(3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: screenWidth(5),
                                        child: Text(
                                          maxLines: 5,
                                          controller.allProduct1[index].name ??
                                              '',
                                          style: TextStyle(
                                              fontSize: screenWidth(30)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            start: screenWidth(5)),
                                        child: Container(
                                          width: screenWidth(2),
                                          height: screenWidth(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Text(
                                            maxLines: 5,
                                            controller.allProduct1[index]
                                                    .address ??
                                                '',
                                            style: TextStyle(
                                                fontSize: screenWidth(30)),
                                          ),
                                          // Image.network(controller
                                          //         .allProduct1[index].logo ??
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
    ));
  }
}
