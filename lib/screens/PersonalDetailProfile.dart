import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/AboutYouProfileScreen.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/text_styles.dart';
import 'onboarding_screen.dart';

class PersonalDetailProfile extends StatefulWidget {
  const PersonalDetailProfile({Key? key}) : super(key: key);

  @override
  State<PersonalDetailProfile> createState() => _PersonalDetailProfileState();
}

class _PersonalDetailProfileState extends State<PersonalDetailProfile> {
  List gender = ["Male", "Female", "Other"];
  String? select = "Male";

  List<String> arrCountry = ["India", "US", "UK"];
  List<String> arrState = ["Rajasthan", "UP", "MP"];
  List<String> arrCity = ["Jaipur", "Delhi", "Ajmer"];
  String? selectedCon, selectedSta, selectedCit;

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
                  padding: const EdgeInsets.only(left: 16, top: 48, right: 16),
                  child: Image.asset("assets/images/profileLine.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/avtar.png",
                      height: 94,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/addbtn.png",
                          height: 30,
                        )),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Text("Create Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF191B22))),
                ),

                SizedBox(
                  height: 24,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    cursorColor: AppColors.blue,
                    decoration: InputDecoration(
                      fillColor: Color(0xFFEEEEEE),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      // prefixIcon: Container(
                      //   // width: 120.0,
                      //     child: Icon(Icons.person_outline_outlined, color: Colors.black26,)
                      // ),
                      labelText: "Name",
                    ),
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
                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    cursorColor: AppColors.blue,
                    decoration: InputDecoration(
                      fillColor: Color(0xFFEEEEEE),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.textFieldBackgroundColor,
                              width: 1)),
                      suffixIcon: Container(
                          // width: 120.0,
                          child: Icon(
                        Icons.calendar_month,
                        color: Colors.black45,
                      )),
                      labelText: "Date of Birth",
                    ),
                    onTap: () async {
                      FocusScope.of(context).requestFocus(new FocusNode());

                      DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: new DateTime.now(),
                          firstDate: new DateTime(2020),
                          lastDate: new DateTime(2030));
                      if (picked != null) setState(() {});
                    },

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
                SizedBox(
                  height: 27,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Text("Gender",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF191B22))),
                ),

                // SizedBox(height: 10,),

                Row(
                  children: [
                    addRadioButton(1, "Male"),
                    addRadioButton(0, "Female"),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 16.0),
                        ),
                        isEmpty: selectedCon == null,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: AppColors.grey),
                            value: selectedCon,
                            hint: Text("Selet Country*"),
                            isDense: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCon = newValue!;
                                state.didChange(newValue);
                              });
                            },
                            items: arrCountry.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value ?? ""),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 16.0),
                        ),
                        isEmpty: selectedSta == null,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: AppColors.grey),
                            value: selectedSta,
                            hint: Text("Select State*"),
                            isDense: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedSta = newValue!;
                                state.didChange(newValue);
                              });
                            },
                            items: arrState.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value ?? ""),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.textFieldBackgroundColor,
                                  width: 1)),
                          errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 16.0),
                        ),
                        isEmpty: selectedCit == null,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: AppColors.grey),
                            value: selectedCit,
                            hint: Text("Select City*"),
                            isDense: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCit = newValue!;
                                state.didChange(newValue);
                              });
                            },
                            items: arrCity.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value ?? ""),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
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
                            Get.to(AboutYouProfileScreen());
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
                            "Save & Next",
                            style: GoogleFonts.poppins(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),

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

  Widget _permisionRows(images, name) {
    return  Row(
      children: [
        Image.asset(images),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(name,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF191B22))),
        ),
      ],
    );
  }
}
