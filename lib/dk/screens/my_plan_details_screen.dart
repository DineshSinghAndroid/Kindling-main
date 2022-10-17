import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../router/my_routing.dart';
import '../utils/all_others.dart';
import '../utils/text_styles.dart';
import '../widgets/common_app_bars.dart';
import '../widgets/common_widgets.dart';

class MyPlansDetailsScreen extends StatefulWidget {
  const MyPlansDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MyPlansDetailsScreen> createState() => _MyPlansDetailsScreenState();
}

class _MyPlansDetailsScreenState extends State<MyPlansDetailsScreen> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: CommonSimpleAppBar("My Plan"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 24.h),
            child: Column(
              children: [
                myPlansContainer(
                    PlanNames[1], PlanPrices[1], PlanFeatures[1], false),
                addHeight(24.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Mode",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                          Text(
                            "Credit Card",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                        ],
                      ),
                      addHeight(16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Plan Purchase Date",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                          Text(
                            "15 Jul 2020",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                        ],
                      ),
                      addHeight(16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Plan Expiry Date",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                          Text(
                            "15 Jul 2020",
                            style: DkTextStyle.size16WithW500darkblack,
                          ),
                        ],
                      ),
                      addHeight(16.h),
                    ],
                  ),
                ),
                addHeight(48.h),
                CommonButton("Renew Same Plan", () {
                  Get.toNamed(MyRouter.selectPaymentMethod1);
                }),
                addHeight(24.h),
                CommonButton("Choose another plan  ", () {
                  Get.toNamed(MyRouter.myPlansScreen);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
