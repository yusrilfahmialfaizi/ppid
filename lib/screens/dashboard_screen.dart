
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ppid_mobile/fragments/dashboard_fragment.dart';
import 'package:ppid_mobile/fragments/setting_fragment.dart';

import '../constants.dart';
import '../utils/images.dart';

class DashboardScreen extends StatefulWidget {
  // const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int isSelected = 1;

  List<Widget> _pages = [
    DashboardFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Widget _bottomTab() {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          height: 60,
          decoration: BoxDecoration(
            color: context.scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(color: shadowColorGlobal, blurRadius: 10, spreadRadius: 2, offset: Offset(0, 0.3)),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                tabItem(1, "images/theme1/t1_home.svg"),
                tabItem(2, "images/theme1/t1_notification.svg"),
                Container(width: 45, height: 45),
                tabItem(3, "images/theme1/t1_settings.svg"),
                tabItem(4, "images/theme1/t1_user.svg"),
              ],
            ),
          ),
        ),
        Container(
          child: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {

            },
            child: Icon(Icons.add, color: kSecondaryColor,),
          ),
        )
      ],
    );
  }


  customBottomNav(int index) {
    return _pages[index - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomTab(),
      body: customBottomNav(isSelected),
    );
  }

  tabItem(var pos, var icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = pos;
        });
      },
      child: Container(
        width: 45,
        height: 45,
        alignment: Alignment.center,
        decoration: isSelected == pos ? BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryColor
        ) : BoxDecoration(),
        child: SvgPicture.asset(
          icon,
          width: 20,
          height: 20,
          color: isSelected == pos ? kSecondaryColor : kPrimaryColor,
        ),
      ),
    );
  }
}