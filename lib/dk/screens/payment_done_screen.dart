import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindling/dk/utils/all_others.dart';
import 'package:kindling/dk/utils/colors.dart';
import 'package:kindling/dk/utils/text_styles.dart';
import '../utils/images.dart';
import '../widgets/common_app_bars.dart';
import '../widgets/common_widgets.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.w, vertical: 36.h),
                  height: 162.h,
                  decoration: BoxDecoration(
                      color: DkColors.containerBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 36.h,
                          width: 36.w,
                          child: Image.asset(
                            Ig.rightTickImg,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      addHeight(24.h),
                      Text(
                        "Payment done successfully",
                        style: DkTextStyle.size20WithW500,
                      )
                    ],
                  ),
                ),
                addHeight(24.h),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
