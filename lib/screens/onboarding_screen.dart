
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/PermissionPopUp.dart';
import 'package:onboarding/onboarding.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

import 'LoginScreen.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/text_styles.dart';

Size textButtonFixedSize = Size(258.w, 40);

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _items = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
  ];

  final _pageController = PageController();

  final _currentPageNotifier = ValueNotifier<int>(0);

  final arrTextHeader = ["Lorem ipsum dolor sit", "Lorem ipsum dolor sit", "Lorem ipsum dolor sit", "Lorem ipsum dolor sit"];
  final arrImages = ["assets/images/on1.png", "assets/images/on2.png", "assets/images/on3.png", "assets/images/on4.png"];

  final arrTextFooter = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CirclePageIndicator Demo'),
      ),
      body: Column(
        children: [
          _buildBody(context),

          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            //  SizedBox(width: 16,),
          InkWell(
            onTap: (){
              Get.to(LoginScreen());
            },
            child: Text(
              "Skip",
              style: GoogleFonts.poppins(
                color: AppColors.red,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        //  SizedBox(width: 50,),
              Container(
                width: 100,
                child: TextButton(
                onPressed: () {
                  if (_currentPageNotifier.value < 3) {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn
                  );} else {
                    // Get.to(LoginScreen());
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => PermissionPopUp(),
                    );
                  }
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
                  "Next",
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                  ),
                ),
              ), ),
             // SizedBox(width: 16,),
            ],
          )),
        ],
      ),
    );
  }

 Widget _buildBody(context) {
    return Column(
      children: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.only(top: 20, bottom: 30),
        //   child: Image.asset("assets/images/LOGO.png", color: Colors.black, height: 20,),
        // ),
        Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: <Widget>[

            _buildPageView(context),



            Center(
                child:
                    Padding(
                      padding: EdgeInsets.only(top: 80),
            child: _buildCircleIndicator2())),
       // Positioned(
       //   top: 50,
       //   left: 50,
       //   child: ListView(
       //     shrinkWrap: true,
       //        children: <Widget>[
       //          _buildCircleIndicator2(),
       //
       //        ]
       //            .map((item) => Padding(
       //          child: item,
       //          padding: EdgeInsets.all(8.0),
       //        ))
       //            .toList(),
       //      ),
       // ),
          ],
        ),
      ],
    );
  }

  _buildPageView(context) {

    return Container(
      //color: Colors.black87,
      height: MediaQuery.of(context).size.height / 1.4,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [

               Positioned(
                 bottom: MediaQuery.of(context).size.width / 1.4  ,
                   child: Container(
                  margin: EdgeInsets.only(left: 50, right: 50),
                  height: 80,
                  width: MediaQuery.of(context).size.width - 100,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                )),

                Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                //  height: 305,
                  child: Center(
                    child: Image.asset(arrImages[index])
                  ),
                ),
              SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
                  child: Text(arrTextHeader[index], style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF191B22)
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Text(arrTextFooter[index], style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A5C64)
                  )),
                ),
              ],
            )]);
          },
          onPageChanged: (int index) {
            setState(() {
              _currentPageNotifier.value = index;
            });
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  _buildCircleIndicator2() {
    return Opacity(
      opacity: 1.0,
      child: CirclePageIndicator(
        size: 10.0,
        selectedSize: 10.0,
       // selectedBorderColor: AppColors.greenColor,
       selectedDotColor: AppColors.red,
        dotColor: AppColors.red.withAlpha(30),
        borderColor: AppColors.red,

        itemCount: _items.length,
        currentPageNotifier: _currentPageNotifier,
      ),
    );
  }

  _buildCircleIndicator3() {
    return CirclePageIndicator(
      selectedDotColor: Colors.green,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator4() {
    return CirclePageIndicator(
      dotColor: Colors.red,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator5() {
    return CirclePageIndicator(
      dotColor: Colors.black,
      selectedDotColor: Colors.blue,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator6() {
    return CirclePageIndicator(
      dotSpacing: 30.0,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator7() {
    return CirclePageIndicator(
      size: 50.0,
      selectedSize: 75.0,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator8() {
    return CirclePageIndicator(
      size: 16.0,
      selectedSize: 16.0,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
      borderWidth: 5,
      selectedDotColor: Colors.black,
      selectedBorderColor: Colors.red,
      dotColor: Colors.black,
      borderColor: Colors.green,
    );
  }
}
