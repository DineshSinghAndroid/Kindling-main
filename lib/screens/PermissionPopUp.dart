import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/LoginScreen.dart';
import 'package:kindling/utils/constants/colors.dart';

class PermissionPopUp extends StatelessWidget {
  const PermissionPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          height: 385,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                      child: Text("To continue, allow app to access your location",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF191B22))),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/camera (3) 1.png", "Camera")),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/locator 1.png", "Location")),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/notification 1.png", "Notification")),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/image-gallery (1) 1.png", "Device Gallery")),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/phone-call 1.png", "Contact")),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                        child: _permisionRows("assets/images/sms 1.png", "SMS")),

                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Get.to(LoginScreen());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF5A5C64),
                                    ),
                                    // borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                height: 60,
                                child: Center(child: Text("Allow", style: TextStyle(color: Color(0xFF6FAFF6)),)),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF5A5C64),
                                  ),
                                  // borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                height: 60,
                                child: Center(child: Text("Deny", style: TextStyle(color: AppColors.red))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }

 Widget _permisionRows(images, name) {
  return  Row(
      children: [
        Image.asset(images, height: 22,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(name,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5A5C64))),
        ),
      ],
    );
  }
}
