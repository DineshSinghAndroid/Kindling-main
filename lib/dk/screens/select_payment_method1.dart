import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kindling/dk/utils/text_styles.dart';

import '../../utils/constants/colors.dart';
import '../router/my_routing.dart';
import '../utils/colors.dart';
import '../utils/all_others.dart';
import '../widgets/common_app_bars.dart';
import '../widgets/common_widgets.dart';

class SelectPaymentMethod1 extends StatefulWidget {
  const SelectPaymentMethod1({Key? key}) : super(key: key);

  @override
  State<SelectPaymentMethod1> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod1> {
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
      appBar: CommonSimpleAppBar("Select Payment Method"),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addHeight(24.h),
              Container(
                width: 396.w,
                height: 349.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return myPlansContainer(
                        PlanNames[1], PlanPrices[1], PlanFeatures[1], false);
                  },
                ),
              ),
              addHeight(24.h),
              addRadioButton(0, 'Debit Card'),
              addRadioButton(1, 'Credit Card'),
              Spacer(),
              CommonButton("Next", () {
                Get.toNamed(MyRouter.selectPaymentMethod2);
              })
            ],
          ),
        ),
      ),
    );
  }

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: AppColors.red,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(
          title,
          style: DkTextStyle.size16WithW500,
        )
      ],
    );
  }

  List gender = ["Debit Card", "Credit Card"];
  String? select = "Debit Card";
}
