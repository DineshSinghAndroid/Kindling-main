import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/OtpScreen.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/text_styles.dart';
import 'onboarding_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  Country _selectedDialogCountry =
  CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController mobile = TextEditingController();

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
                padding: const EdgeInsets.only(left: 16),
                child: Text("Welcome Back", style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF191B22)
            )),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("To Continue your account!", style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5A5C64)
              )),
            ),

            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 16,),
                Text(
                    "Enter Your Mobile Number",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5C64)
                    ))
              ],
            ),
            // SizedBox(height: 0,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(

                cursorColor: AppColors.blue,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF191B22), width: 1)
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF191B22), width: 1)
                  ),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF191B22), width: 1)
                  ),
                  prefixIcon: Container(
                    width: 70.0,
                    child: IconButton(
                      onPressed: () {
                        _openCountryPickerDialog();
                      },
                      icon: Container(
                        child: Row(
                          children: <Widget>[
                            // CountryPickerUtils.getDefaultFlagImage(
                            //     _selectedDialogCountry),
                            // SizedBox(
                            //   width: 8.0,
                            // ),
                            Text(
                              "+${_selectedDialogCountry.phoneCode}",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF191B22)
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: Color(0xFF191B22),),
                            // Container(
                            //     padding: EdgeInsets.only(left: 7, right: 0),
                            //     height: 30,
                            //     child: VerticalDivider(width: 1, thickness: 1))
                          ],
                        ),
                      ),
                    ),
                  ),
                  labelText: "Mobile Number",
                ),
                controller: mobile,
                style: TextStyle(color: Color(0xFF191B22)),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Phone is required";
                  } else if (value!.trim().length < 2) {
                    return "Phone is too short.";
                  }
                  return null;
                },
                // onSaved: (input) => addressTitle = input.trim(),
              ),
            ),

            SizedBox(height: 48,),


            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
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
                           Get.to(OtpScreen());
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
                        "Login",
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48,),
            Center(child: Image.asset("assets/images/orseprator.png", height: 20,)),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(child: TextButton(onPressed: (){}, child: Image.asset("assets/images/fb.png",),)),
                  SizedBox(height: 30,),
                  Expanded(child: TextButton(onPressed: (){}, child: Image.asset("assets/images/gl.png"),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
