import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/DashboardScreen.dart';
import 'package:kindling/utils/constants/colors.dart';

import 'onboarding_screen.dart';

class SearchCriteriaScreen extends StatefulWidget {
  const SearchCriteriaScreen({Key? key}) : super(key: key);

  @override
  State<SearchCriteriaScreen> createState() => _SearchCriteriaScreenState();
}

class _SearchCriteriaScreenState extends State<SearchCriteriaScreen> {
  double _currentSliderValue = 20;
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  List gender = ["Man", "Woman", "Other"];
  String? select = "Man";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 48, right: 16),
              child: Image.asset("assets/images/step2.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.radio_button_checked,
                    color: AppColors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("My Location",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF191B22)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 22, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text("Add Another Location\nOnly For Paid User",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF191B22))),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Buy Plan",
                        style: TextStyle(color: AppColors.red),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: TextFormField(
                cursorColor: AppColors.blue,
                decoration: InputDecoration(
                  fillColor: Color(0xFFEEEEEE),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.textFieldBackgroundColor, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.textFieldBackgroundColor, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.textFieldBackgroundColor, width: 1)),
                  // prefixIcon: Container(
                  //   // width: 120.0,
                  //     child: Icon(Icons.person_outline_outlined, color: Colors.black26,)
                  // ),
                  labelText: "Add Location",
                ),
                minLines: 2,
                maxLines: 2,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Your Name is required";
                  } else if (value!.trim().length < 2) {
                    return "Your Name is too short.";
                  }
                  return null;
                },
                // onSaved: (input) => addressTitle = input.trim(),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text(
                    "You will be able to see the profile of users who will come under this location only. For upgrading the location, you need to purchase the plan to browse other location profiles",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5C64)))),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text("Maximum Distance",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22)))),
            Slider(
              value: _currentSliderValue,
              max: 250,
              divisions: 250,
              activeColor: AppColors.red,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "0 Miles",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )),
                  Text("250 Miles",
                      style: TextStyle(
                        fontSize: 13,
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text("Age Range",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22)))),

            RangeSlider(
              values: _currentRangeValues,
              min: 18,
              max: 100,
              divisions: 100,
              activeColor: AppColors.red,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "18 yrs",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )),
                  Text("80+ yrs",
                      style: TextStyle(
                        fontSize: 13,
                      ))
                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text("Show Me",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22)))),

            Row(
              children: [
                addRadioButton(1, "Man"),
                addRadioButton(0, "Woman"),
              ],
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
                        Get.to(DashboardScreen());
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
                        "Complete Profile",
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
        Text(title)
      ],
    );
  }
}
