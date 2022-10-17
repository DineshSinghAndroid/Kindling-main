import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kindling/dk/utils/text_styles.dart';

import '../utils/colors.dart';
import '../utils/all_others.dart';
import '../widgets/common_app_bars.dart';
import '../widgets/common_widgets.dart';

class MyPlanBuyScreen extends StatefulWidget {
  const MyPlanBuyScreen({Key? key}) : super(key: key);

  @override
  State<MyPlanBuyScreen> createState() => _MyPlanBuyScreenState();
}

class _MyPlanBuyScreenState extends State<MyPlanBuyScreen> {
  List PlanNames = ["Silver", "Gold"];
  List PlanFeatures = [
    "1. Lorem ipsum dolor sit amet"
        "\n2. Lorem ipsum dolor sit amet"
        "\n3. Lorem ipsum dolor sit amet"
        "\n4. Lorem ipsum dolor sit amet ",
    "1. Lorem ipsum dolor sit amet"
        "\n2. Lorem ipsum dolor sit amet"
        "\n3. Lorem ipsum dolor sit amet"
        "\n4. Lorem ipsum dolor sit amet "
  ];
  List PlanPrices = ["9.99", "24.99"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonSimpleAppBar("My Plan"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Plans Only For You",
                  style: DkTextStyle.size20WithW600,
                ),
                addHeight(24.h),
                Text(
                  "Plans Will be containing some benefits for you and you will get more features & functionality according to the selected",
                  style: DkTextStyle.size16WithW500,
                  textAlign: TextAlign.center,
                ),
                addHeight(24.h),
                Container(
                  width: 396.w,
                  height: MediaQuery.of(context).size.height.h,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: PlanNames.length,
                    itemBuilder: (context, index) {
                      return myPlansContainer(PlanNames[index],
                          PlanPrices[index], PlanFeatures[index], true);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
