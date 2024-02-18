import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/custom_widgets/custom_appbar.dart';
import 'package:alkarama_project/ui/shared/custom_widgets/custom_kj.dart';
import 'package:alkarama_project/ui/shared/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:alkarama_project/ui/shared/shared_widgets/custom_text.dart';
import 'package:alkarama_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class PlayerAdminsView extends StatelessWidget {
  const PlayerAdminsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            CustomAppBar(
              text: "كادر الادارة و اللاعبين",
            ),
            SizedBox(
              height: screenHeight(30),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                "assets/images/pngs/Boos.png",
                width: screenWidth(20),
              ),
            ),
            SizedBox(
              height: screenHeight(45),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainerText(
                    text: "ملابس فريق نادي الكرامة لعام 2023-2024",
                    widthone: screenWidth(1.9),
                    widthtwo: screenWidth(8),
                    widththree: screenWidth(5),
                  ),
                  // Text(
                  //   "ملابس فريق نادي الكرامة لعام 2023-2024",
                  //   style: TextStyle(
                  //     color: AppColors.blackColor1,
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(
                    height: screenHeight(40),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/pngs/techert.png",
                      width: screenWidth(1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(20),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                right: screenWidth(40),
              ),
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        end: screenWidth(1), bottom: screenWidth(20)),
                    child: CustomContainerText(
                        text: "الاداريين",
                        widthone: screenWidth(12),
                        widththree: screenWidth(20),
                        widthtwo: screenHeight(45)),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/pngs/physicalpreparation.png"),
                      Image.asset("assets/images/pngs/teamadministrator.png"),
                      Image.asset("assets/images/pngs/teamwizard.png"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(30),
            ),
            CustomContainerText(
              text: "مدربو الفريق",
              // color: AppColors.blackColor1,
              widthone: screenWidth(6),
              widththree: screenWidth(18),
              widthtwo: screenWidth(22),
            ),
            CustomSingleChildScrollView(
              text: "",
              image1: "assets/images/pngs/technicaldirector.png",
              image2: "assets/images/pngs/assistanttrainer.png",
              image3: "assets/images/pngs/goalkeepercoach.png",
            ),
            CustomContainerText(
              text: "حراس المرمى",
              // color: AppColors.blackColor1,
              widthone: screenWidth(6),
              widththree: screenWidth(15),
              widthtwo: screenWidth(20),
            ),
            CustomSingleChildScrollView(
              text: "",
              image1: "assets/images/pngs/goalkeepermahmood.png",
              image2: "assets/images/pngs/goalkeeperzakria.png",
              image3: "assets/images/pngs/goalkeepersharf.png",
            ),
            CustomContainerText(
              text: "المدافعون",
              // color: AppColors.blackColor1,
              widthone: screenWidth(9),
              widththree: screenWidth(20),
              widthtwo: screenWidth(22),
            ),
            CustomSingleChildScrollView(
              text: "",
              image1: "assets/images/pngs/defenderanas.png",
              image2: "assets/images/pngs/defenderiprahem.png",
              image3: "assets/images/pngs/defenderhaitham.png",
            ),
            CustomContainerText(
              text: "خط الوسط",
              // color: AppColors.blackColor1,
              widthone: screenWidth(9),
              widththree: screenWidth(20),
              widthtwo: screenWidth(22),
            ),
            CustomSingleChildScrollView(
              text: "",
              image1: "assets/images/pngs/midlinetameer.png",
              image2: "assets/images/pngs/midlinejihad.png",
              image3: "assets/images/pngs/midlinemahmood.png",
            ),
            CustomContainerText(
              text: "المهاجمون",
              // color: AppColors.blackColor1,
              widthone: screenWidth(9),
              widththree: screenWidth(20),
              widthtwo: screenWidth(22),
            ),
            CustomSingleChildScrollView(
              text: "",
              image1: "assets/images/pngs/strikermazeen.png",
              image2: "assets/images/pngs/strikerbahoz.png",
              image3: "assets/images/pngs/strkermohanaad.png",
            ),
            SizedBox(
              height: screenHeight(10),
            ),
          ],
        ),
      ),
    );
  }
}
