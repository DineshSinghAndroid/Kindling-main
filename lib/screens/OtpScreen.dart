import 'dart:async';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/text_styles.dart';
import 'PersonalDetailProfile.dart';
import 'onboarding_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final formKey = GlobalKey<FormState>();
  Country _selectedDialogCountry =
  CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController mobile = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  TextEditingController otpController = TextEditingController();

  void _openCountryPickerDialog() => showDialog(
    context: context,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(
        primaryColor: AppColors.blue,
      ),
      child: CountryPickerDialog(
        titlePadding: EdgeInsets.all(8.0),
        searchCursorColor: AppColors.blue,
        searchInputDecoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        isSearchable: true,
        title: Text(
          'SELECT YOUR COUNTRY',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        onValuePicked: (Country country) {
          setState(() {
            _selectedDialogCountry = country;
          });
        },
        priorityList: [
          CountryPickerUtils.getCountryByIsoCode('IN'),
          CountryPickerUtils.getCountryByIsoCode('US'),
          CountryPickerUtils.getCountryByIsoCode('PK'),
          CountryPickerUtils.getCountryByIsoCode('BD'),
          CountryPickerUtils.getCountryByIsoCode('NP'),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 30, top: 71),
                child:
                Image.asset("assets/images/loginPageImages.png", height: MediaQuery.of(context).size.width / 2.3,)),


            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("Please enter the OTP\nsent on your mobile\nnumber", style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF191B22)
              )),
            ),

            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 16,),
                Text(
                    "Verification Code",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5C64)
                    ))
              ],
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child:  Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.r,
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    autoFocus: true,
                    cursorColor: AppColors.blue,
                    enabled: true,
                    keyboardType: TextInputType.number,
                    textStyle: AppTextStyles.textSize14WithWeight400Grey,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderWidth: 1.0,
                      disabledColor: AppColors.white,
                      errorBorderColor: AppColors.red,
                      activeColor: AppColors.borderColor,
                      inactiveFillColor: Color(0xFFEEEEEE),
                      selectedFillColor: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      inactiveColor: AppColors.borderColor,
                      selectedColor: AppColors.borderColor,
                      activeFillColor: AppColors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: AppColors.white,
                    enableActiveFill: true,
                    //errorTextMargin: EdgeInsets.only(top: 10,),
                    //errorTextSpace: 10,
                    errorAnimationController: errorController,
                    controller: otpController,
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return "OTP is require";
                    //   } else if (value!.trim().length < 4) {
                    //     return "Invalid OTP";
                    //   }
                    //   return null;
                    // },
                    onCompleted: (v) {
                      print("Completed");
                      Get.to(PersonalDetailProfile());
                    },
                    onChanged: (value) {
                      print(value);
                      setState(
                            () {

                          // currentText = value;
                        },
                      );
                    },

                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
              ),
            ),

Padding(
  padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
      children: [
        IconButton(onPressed: (){}, icon:

            Image.asset("assets/images/sendAgain.png"),


        ),
        Text("Send Again", style: GoogleFonts.poppins(
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),)
      ],

    ),
    Text("00:31", style: GoogleFonts.poppins(
      color: AppColors.red,
      fontSize: 16,
      fontWeight: FontWeight.w600
    ),)
  ],),
)
          ],
        ),
      ),
    );
  }
}
