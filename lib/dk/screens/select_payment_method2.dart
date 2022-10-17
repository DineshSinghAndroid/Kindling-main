import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kindling/dk/utils/all_others.dart';
import 'package:kindling/dk/utils/colors.dart';
import 'package:kindling/dk/utils/text_styles.dart';
import 'package:kindling/dk/widgets/common_app_bars.dart';
import 'package:kindling/dk/widgets/common_widgets.dart';

import '../../utils/constants/colors.dart';
import '../router/my_routing.dart';
import '../utils/images.dart';
import '../widgets/textFormField.dart';

class SelectPaymentMethod2 extends StatefulWidget {
  const SelectPaymentMethod2({Key? key}) : super(key: key);

  @override
  State<SelectPaymentMethod2> createState() => _SelectPaymentMethod2State();
}

class _SelectPaymentMethod2State extends State<SelectPaymentMethod2> {
  bool checkBoxValue = true;
  bool? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonSimpleAppBar('Select Payment Method'),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              addRadioButton(0, 'Add New'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: commonBoxDecoration(DkColors.borderColor),
                height: 178.h,
                width: 396.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 320.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedErrorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "Card Number",
                                hintStyle: DkTextStyle.size16WithW500,
                                border: InputBorder.none),
                          ),
                        ),
                        Image.asset(
                          Ig.visaIcon,
                          height: 12.h,
                          width: 38.w,
                        ),
                      ],
                    ),
                    addDivider(),
                    TextFormField(
                      decoration: InputDecoration(
                          focusedErrorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Name On Card",
                          hintStyle: DkTextStyle.size16WithW500,
                          border: InputBorder.none),
                    ),
                    addDivider(),
                    Row(
                      children: [
                        Container(
                          width: 174.w,
                          child: Row(
                            children: [
                              Container(
                                width: 144.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedErrorBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintText: "Expiry Date",
                                      hintStyle: DkTextStyle.size16WithW500,
                                      border: InputBorder.none),
                                ),
                              ),
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 174.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedErrorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "CVV",
                                hintStyle: DkTextStyle.size16WithW500,
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(width: 174.w, child: addDivider()),
                        addWidth(20.h),
                        Container(width: 174.w, child: addDivider()),
                      ],
                    ),
                  ],
                ),
              ),
              addHeight(16.h),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: new Checkbox(
                          checkColor: DkColors.primaryColor,
                          value: checkBoxValue,
                          activeColor: DkColors.borderColor,
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxValue = newValue!;
                            });
                          }),
                    ),
                    Text(
                      "Save this card for future payment",
                      style: DkTextStyle.size14WithW500,
                    )
                  ],
                ),
              ),
              addHeight(38.h),
              CommonButton("Proceed", () {
                Get.toNamed(MyRouter.paymentDoneScreen);
              }),
              addHeight(48.h),
              addRadioButton(1, 'Saved Cards'),
              addHeight(24.h),
              Container(
                height: 400.h,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 24.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 10.h),
                      height: 85.h,
                      decoration: BoxDecoration(
                          color: DkColors.containerBgColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 41.h,
                            width: 41.w,
                            child: Image.asset(
                              Ig.cardIcon1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addWidth(26.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SBI Bank 4535",
                                style: DkTextStyle.size16WithW500,
                              ),
                              addHeight(5.h),
                              Text(
                                "Saving A/c No: XXXX XXXX 4535",
                                style: DkTextStyle.size16WithW500,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  Divider addDivider() {
    return Divider(
      height: 1,
      color: DkColors.borderColor,
      thickness: 1,
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
          style: DkTextStyle.size18WithW500,
        ),
      ],
    );
  }

  List gender = ["Add New", "Saved Cards"];
  String? select = "Add New";
}
