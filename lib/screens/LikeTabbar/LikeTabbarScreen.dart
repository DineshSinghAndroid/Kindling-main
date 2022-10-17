import 'package:flutter/material.dart';
import 'package:kindling/utils/constants/colors.dart';

class LikeTabbarScreen extends StatefulWidget {
  const LikeTabbarScreen({Key? key}) : super(key: key);

  @override
  State<LikeTabbarScreen> createState() => _LikeTabbarScreenState();
}

class _LikeTabbarScreenState extends State<LikeTabbarScreen> {

  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             InkWell(
               onTap: () {
                 setState(() {
                   selectedTab = 0;
                 });
               },
               child: Container(
                 decoration: BoxDecoration(
                   color: selectedTab == 0 ? Colors.white : Color(0xFFEEEEEE),
                     border: Border.all(
                       color: selectedTab == 0 ? AppColors.red : Color(0xFFEEEEEE),
                       width: 1.5
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(20))
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
                   child: Text("10 Likes", style: TextStyle(color: selectedTab == 0 ? AppColors.red : Color(0xFF000000)),),
                 ),
               ),
             ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedTab = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selectedTab == 1 ? Colors.white : Color(0xFFEEEEEE),
                      border: Border.all(
                          color: selectedTab == 1 ? AppColors.red : Color(0xFFEEEEEE),
                          width: 1.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
                    child: Text("Profile", style: TextStyle(color: selectedTab == 1 ? AppColors.red : Color(0xFF000000)),),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedTab = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selectedTab == 2 ? Colors.white : Color(0xFFEEEEEE),
                      border: Border.all(
                          color: selectedTab == 2 ? AppColors.red : Color(0xFFEEEEEE),
                          width: 1.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
                    child: Text("Feeds", style: TextStyle(color: selectedTab == 2 ? AppColors.red : Color(0xFF000000)),),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
