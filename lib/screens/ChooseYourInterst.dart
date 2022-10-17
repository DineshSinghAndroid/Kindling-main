import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/SearchCriteriaScreen.dart';
import 'package:kindling/utils/constants/colors.dart';

import 'onboarding_screen.dart';

class ChooseYourIntrest extends StatefulWidget {
  const ChooseYourIntrest({Key? key}) : super(key: key);

  @override
  State<ChooseYourIntrest> createState() => _ChooseYourIntrestState();
}

class _ChooseYourIntrestState extends State<ChooseYourIntrest> {

  var arrChipsmanage =  [ {"name" : "Photography", "selected" : false},
    {"name" : "Books", "selected" : false},
    {"name" : "Reading", "selected" : false},
    {"name" : "Gaming", "selected" : false},
    {"name" : "Song", "selected" : false},
    {"name" : "Movies", "selected" : false},
    {"name" : "Travelling", "selected" : false},
    {"name" : "Writing", "selected" : false},
    {"name" : "Philosophy", "selected" : false},
    {"name" : "Astrology", "selected" : false}];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: Text("Choose Your Interest",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text(
                    "Choose which you have more interest to give you best app experience.",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5C64))),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
                child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: <Widget>[
                    Wrap(
                      spacing: 4.0,
                      runSpacing: 0.0,
                      children: List<Widget>.generate(
                          arrChipsmanage.length, // place the length of the array here
                              (int index) {
                            var data = arrChipsmanage[index];
                            return InkWell(
                              onTap: () {
setState(() {
  data["selected"] = !(data["selected"] as bool);
});
                              },
                              child: Chip(
                                shape: StadiumBorder(side: BorderSide(width: 1, color: (data["selected"] as bool) ? AppColors.red : Color(0xFFA1ADB7))),
                                backgroundColor: (data["selected"] as bool) ? AppColors.red : AppColors.white ,
                                  label: Text(data["name"] as String ?? "", style: TextStyle(color: (data["selected"] as bool) ? AppColors.white : AppColors.black),)
                              ),
                            );
                          }
                      ).toList(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // if (_currentPageNotifier.value < 3) {
                          //   _pageController.nextPage(
                          //       duration: Duration(milliseconds: 300),
                          //       curve: Curves.easeIn
                          //   );} else {
                          Get.to(SearchCriteriaScreen());
                          //
                          // }
                        },
                        style: TextButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: AppColors.red,
                          fixedSize: textButtonFixedSize,
                          textStyle: GoogleFonts.poppins(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        child: Text(
                          "Continue",
                          style: GoogleFonts.poppins(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
