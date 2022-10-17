import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

PreferredSize CommonSimpleAppBar(title) {
  title;
  return PreferredSize(
    preferredSize: Size(428.w, 100.h),
    child: AppBar(
      backgroundColor: DkColors.primaryColor,
      bottom: PreferredSize(
        child: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: DkTextStyle.size20WithW500White,
              )
            ],
          ),
          width: 428.w,
          height: 100.h,
          color: DkColors.primaryColor,
        ),
        preferredSize: Size(428.w, 80.h),
      ),
    ),
  );
}
