import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/LikeTabbar/LikeTabbarScreen.dart';
import 'package:kindling/utils/constants/colors.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../utils/content.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = [
    "Red",
    "Blue",
    "Green",
    "Yellow",
    "Orange",
    "Grey",
    "Purple",
    "Pink"
  ];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.purple,
    Colors.pink
  ];
  @override
  void initState() {
    tinderCard();
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedTabIndex = _tabController.index;
      });
      print("Selected Index: " + _tabController.index.toString());
    });
  }

  tinderCard() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(image: Image.asset("assets/images/homedummy.png")),
          likeAction: () {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //   content: Text("Liked ${_names[i]}"),
            //   duration: Duration(milliseconds: 500),
            // ));
          },
          nopeAction: () {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //   content: Text("Nope ${_names[i]}"),
            //   duration: Duration(milliseconds: 500),
            // ));
          },
          superlikeAction: () {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //   content: Text("Superliked ${_names[i]}"),
            //   duration: Duration(milliseconds: 500),
            // ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.75))
                ],
                color: Colors.white),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              onTap: (index) {
                setState(() {
                  selectedTabIndex = index;
                });
              },
              tabs: <Widget>[
                Tab(
                    icon: Image.asset(
                  "assets/images/user (3) 1.png",
                  height: 24,
                  color:
                      selectedTabIndex == 0 ? AppColors.red : Color(0xFFA1ADB7),
                )),
                Tab(
                  icon: Image.asset(
                    "assets/images/chat (1) 1.png",
                    height: 24,
                    color: selectedTabIndex == 1
                        ? AppColors.red
                        : Color(0xFFA1ADB7),
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/images/group (3) 1.png",
                    height: 24,
                    color: selectedTabIndex == 2
                        ? AppColors.red
                        : Color(0xFFA1ADB7),
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/images/like (3) 1.png",
                    height: 24,
                    color: selectedTabIndex == 3
                        ? AppColors.red
                        : Color(0xFFA1ADB7),
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/images/bell (1) 1.png",
                    height: 24,
                    color: selectedTabIndex == 4
                        ? AppColors.red
                        : Color(0xFFA1ADB7),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: <Widget>[
                homeUI(),
                Center(
                  child: Text("It's rainy here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: LikeTabbarScreen(),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget homeUI() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          height: 102,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (b, i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6, left: 16),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.red,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(200))),
                            child: Image.asset(
                              "assets/images/home 1.png",
                              height: 58,
                            ),
                            padding: EdgeInsets.all(1),
                            height: 65,
                            margin: EdgeInsets.only(bottom: 5),
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  color: AppColors.greenColor,
                                  // ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                              child: Text(
                                "LIVE",
                                style: GoogleFonts.poppins(
                                    fontSize: 8, color: Colors.white),
                              ),
                              padding: EdgeInsets.only(
                                  left: 2, right: 2, top: 1, bottom: 1),
                            ),
                            top: 56,
                          )
                        ],
                        alignment: Alignment.center,
                      ),
                      Text(
                        "Alexa",
                        style: GoogleFonts.poppins(fontSize: 14),
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
            child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height - 340,
            child: SwipeCards(
              matchEngine: _matchEngine!,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset("assets/images/homedummy.png");
              },
              onStackFinished: () {
                // _scaffoldKey.currentState!.showSnackBar(SnackBar(
                //   content: Text("Stack Finished"),
                //   duration: Duration(milliseconds: 500),
                // )
                //
                // );
              },
              itemChanged: (SwipeItem item, int index) {
                // print("item: ${item.content.text}, index: $index");
              },
              upSwipeAllowed: true,
              fillSpace: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    _matchEngine!.currentItem?.nope();
                  },
                  child: Image.asset(
                    "assets/images/closeButtonHome.png",
                    height: 63,
                  )),
              // ElevatedButton(
              //     onPressed: () {
              //       _matchEngine!.currentItem?.superLike();
              //     },
              //     child: Text("Superlike")),
              SizedBox(
                width: 40,
              ),
              TextButton(
                  onPressed: () {
                    _matchEngine!.currentItem?.like();
                  },
                  child: Image.asset(
                    "assets/images/likeButtonHome.png",
                    height: 63,
                  ))
            ],
          )
        ]))
      ],
    );
  }
}
