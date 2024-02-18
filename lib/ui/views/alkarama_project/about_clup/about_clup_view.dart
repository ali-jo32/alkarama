import 'package:alkarama_project/ui/shared/custom_widgets/custom_appbar.dart';
import 'package:alkarama_project/ui/shared/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:alkarama_project/ui/shared/colors.dart';
import 'package:alkarama_project/ui/shared/utils.dart';

class AboutClupView extends StatefulWidget {
  const AboutClupView({
    super.key,
  });

  @override
  State<AboutClupView> createState() => _AboutClupViewState();
}

class _AboutClupViewState extends State<AboutClupView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          CustomAppBar(text: "عن النادي"),
          SizedBox(
            height: screenHeight(45),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "assets/images/pngs/aboutclub_firstphoto.png",
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
                CustomText(
                  text: "متى تأسس نادي الكرامة؟",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  textColor: AppColors.blackColor1,
                ),
                Text(
                  "تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص في سورية وكان يعرف بنادي خالدبن الوليد في ذلك الوقت وفي عام 1972 تم دمج النادي مع العديد من الاندية الاخرى وهي نادي الوحدةونادي الطلائع و نادي التضامن و نادي الجهاد و اطلق عليه أنذاك اسم نادي الكرامة وهذا الاسم مازال يستخدم حتى اليوم . ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(45),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 10,
              // end: 10,
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth(2.1),
                  height: screenHeight(4),
                  child: Column(
                    children: [
                      Text(
                        "من هو مؤسس نادي الكرامة:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor1,
                        ),
                      ),
                      Text(
                        "يُعتبر الأستاذ ساطع أتاسي مؤسس نادي الكرامة السوري, ويُعتبر أيضا الأب الروحي للنادي.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth(20),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/pngs/alkaramafounder.png",
                    width: screenWidth(2.3),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(35),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "assets/images/pngs/firstplayer.png",
              width: screenWidth(20),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "كيف جاءت فكرة تأسيس نادي الكرامة:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor1,
                  ),
                ),
                Text(
                  "جاءت فكرة تأسيس النادي من قبل مجموعة من شباب مدينة حمص الذين مارسوا رياضة كرة القدم وفكروا بطريقة جديدة في تأسيس نادي ليجمعهم جميعا وبناء على ذلك جاءت فكرة التأسيس.",
                  style: TextStyle(
                    fontSize: 15.2,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "assets/images/pngs/stadium.png",
              width: screenWidth(20),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ما هو الملعب الرسمي لنادي الكرامة:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor1,
                  ),
                ),
                Text(
                  "يُعَدُّ ملعب خالد بن الوليد، الذي تأسس في عام 1960 ، هو الملعب الرسمي لنادي حمص الريا ضي. يقع الملعب في       مدينة حمص ويُعَدُّ ثاني أحدث الملاعب في سوريابعد ملعب حلب الدولي يتسع الملعب لحوالي 38000 متفرج، ويُعرَفُ هذا الملعب بلقب “مقبرة الفرق” وذلك لأنه من الصعب جدًا هزيمةنادي الكرامة فيه. كما استضاف الملعب نهائي دوري أبطال آسيا في عام 2006",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: screenHeight(45),
          // ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 10,
              // end: 10,
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth(2.2),
                  // height: screenHeight(1),
                  child: Column(
                    children: [
                      Text(
                        "ما هي اول بطولة حصل عليها نادي الكرامة:",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor1,
                        ),
                      ),
                      Text(
                        "في الخامس والعشرين من نيسان عام 1948 م فاز نادي الكرامةالسوري بأول بطولة في تاريخه حيث تغلب على منتخب حلب بنتيجةهدفين مقابل هدف واحد.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth(20),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/pngs/firstchamp.png",
                    width: screenWidth(2.3),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(60),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "assets/images/pngs/mor3ebasia.png",
              width: screenWidth(20),
            ),
          ),
          Column(
            children: [
              Text(
                "السمعة الخارجية لنادي الكرامة:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 5, start: 5),
                child: Text(
                  "السمعة العربية والآسيوية القاريّة، حققها نادي الكرامة عندما خاض بطولة الأندية العربية بحمص عام 1985 1985 إلى جانب النجمة اللبناني والفيصلي الأردنّي ومشاركته بدورة الملك حسين بالأردن في عام 1987 ولقائه مع الهلال السعودي في تصفياتدوري الأندية الآسيوية أبطال الكؤوس سنة 2000 , وكذلك الأمر مع الزمالك المصريّ في تصفيات دوري أبطال العرب عام 2004كما شارك بدورات عربية مختلفة في العراق والأردن ومصر  ونافسعلى ألقابها وكان الإنجاز الأكبر بوصوله للمرة الأولى بتاريخه وتاريخ لكرة السورية إلى المباراة النهائية  لدوري أبطال آسيا وخسر اللقبفي اللحظات الأخيرة أمام تشونبوك الكوري بعد خسارته في كورياالجنوبية وفوزه في حمص. يعدّ فريق الكرامة الفريق الآسيويالوحيد الذي يشارك في دوري أبطال آسيا بنظامها الجديد لثلاثمرات متتالية ويتأهل في جميعها لدور الثمانية الكبار على الأقل وفي عام 2009 شارك النادي في كأس الاتحاد الآسيوي لأسبابنظيمية ومادية وقد وصل إلى نهائي لبطولة ليواجه نادي الكويتفي مباراة واحدة في ملعب نادي الكويت ويخسر المباراة بعد عدةوعوامل أثرت على مستوى الفريق في تلك البطولة كما يلعب أبناءالنادي من كوادر فنية وتدريبيّة و خبرات ولاعبين ممن يعمل فيالدول العربية دوراً مهما في المحافظة على السمعة العطرة لهاذا النادي وقد خرّج النادي عدة لاعبين متميزين يعدّون نجوم فرقهم حاليا ومنهم :",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "• جهاد الحسين\n• فراس الخطيب\n• توفيق طيارة\n• محمود المواس\n• علاء الشبلي\n• مصعب بلحوس\n• عاطف جنيات\n",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  "assets/images/pngs/player2009.png",
                  // width: screenWidth(20),
                ),
              ),
            ],
          ),
          Text(
            "كرة السلة في نادي الكرامة:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor1,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "assets/images/pngs/baketballplayer.png",
              width: screenWidth(20),
            ),
          ),
          Text(
            "حصل الكرامة على بطولة السلة للمرة الأولى في تاريخه عام 2020",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor1,
            ),
          ),
        ],
      ),
    ));
  }
}
