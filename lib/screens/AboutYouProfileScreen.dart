
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/ChooseYourInterst.dart';
import 'package:kindling/utils/constants/colors.dart';

import 'onboarding_screen.dart';

class AboutYouProfileScreen extends StatefulWidget {
  const AboutYouProfileScreen({Key? key}) : super(key: key);

  @override
  State<AboutYouProfileScreen> createState() => _AboutYouProfileScreenState();
}

class _AboutYouProfileScreenState extends State<AboutYouProfileScreen> {

  List gender = ["Boy / Man", "Girl / Woman"];
  String? select = "Boy / Man";


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
                child: Image.asset("assets/images/step2.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text("1. Your Hobbies",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [

                    Expanded(
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
                          labelText: "Hobby 1",
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
                    IconButton(onPressed: (){}, icon: Image.asset("assets/images/minusrow.png"))
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [

                    Expanded(
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
                          labelText: "Hobby 2",
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
                    IconButton(onPressed: (){}, icon: Image.asset("assets/images/addrow.png"))
                  ],
                ),
              ),

              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text("2. Language",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [

                    Expanded(
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
                          labelText: "English",
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
                    IconButton(onPressed: (){}, icon: Image.asset("assets/images/minusrow.png"))
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [

                    Expanded(
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
                          labelText: "Hindi",
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
                    IconButton(onPressed: (){}, icon: Image.asset("assets/images/addrow.png"))
                  ],
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text("3. Interested In",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),

              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  addRadioButton(1, "Boy / Man"),
                  addRadioButton(0, "Girl / Woman"),
                ],
              ),

              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text("4. About Yourself",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  children: [

                    Expanded(
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
                          labelText: "Type here....",
                        ),
                        keyboardType: TextInputType.name,
                        minLines: 3,
                        maxLines: 3,
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
                 //   IconButton(onPressed: (){}, icon: Image.asset("assets/images/addrow.png"))
                  ],
                ),
              ),

              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Text("5. Add photos / video",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      color: Color(0xFFEEEEEE),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/addimage.png",)
                          ],
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
                          Get.to(ChooseYourIntrest());
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
        Text(title)
      ],
    );
  }
}
