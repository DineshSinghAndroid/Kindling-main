import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../router/my_routing.dart';
import '../utils/all_others.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';

Container CommonButton(text, onTap) {
  return Container(
    height: 56.h,
    width: 396.w,
    decoration: BoxDecoration(
        color: DkColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(54.h))),
    child: MaterialButton(
      onPressed: onTap,
      child: Text(
        text,
        style: DkTextStyle.commonButtonTextWhite,
      ),
    ),
  );
}

//Common Container for plans
Container myPlansContainer(planName, planPrices, planFeatures, visibility) {
  return Container(
    margin: EdgeInsets.only(bottom: 24.h),
    padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 20.h),
    height: visibility == true ? 349.h : 299.h,
    width: 396.w,
    decoration: commonBoxDecoration(
        planName == "Silver" ? DkColors.borderColor : Color(0xffD6BC80)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              planName,
              style: DkTextStyle.size18WithW600darkBlack,
            ),
            Text(
              "\$" + planPrices + " for 1 month ",
              style: DkTextStyle.size16WithW500darkblack,
            ),
          ],
        ),
        addHeight(9.h),
        Text(
          "Features",
          style: DkTextStyle.size16WithW500darkblack,
        ),
        addHeight(4.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              planFeatures,
              style: DkTextStyle.size14WithW500,
            ),
            addHeight(9.h),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur sit arcu felis turpis ",
              style: DkTextStyle.size14WithW400,
            ),
            visibility == true ? addHeight(16.h) : addHeight(1.h),
            visibility == true
                ? Center(
                    child: Container(
                    height: 42.h,
                    width: 196.w,
                    child: CommonButton("BUY NOW", () {
                      Get.toNamed(MyRouter.selectPaymentMethod1);
                    }),
                  ))
                : addHeight(0.h),
            addHeight(20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "by Clicking I Accept The",
                  style: DkTextStyle.size12WithW400,
                  children: <TextSpan>[
                    TextSpan(
                      text: " terms \& Conditions ",
                      style: DkTextStyle.size14WithW500darkblack,
                    ),
                    TextSpan(
                      text: "privacy Policy",
                      style: DkTextStyle.size12WithW400,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
