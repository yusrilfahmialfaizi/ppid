
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:project_lite/dashboard/fragments/dashboard_fragment.dart';

import '../utils/images.dart';

class DashboardScreen extends StatefulWidget {
  // const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int _selectedItemIndex = 0;

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
            backgroundColor: Colors.blue,
            onPressed: () {

            },
            child: Icon(Icons.add, color: Colors.white,),
          ),
        )
      ],
    );
  }

  void _onTap(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  Widget customBottomNav(BuildContext context, bool isActiveIcon, String text, String icon) {
    if (isActiveIcon) {
      return Column(
        children: [
          Image.asset(icon, height: 16, width: 16, color: Colors.white),
          8.height,
          Text('$text', style: boldTextStyle(size: 14, color: Colors.white)),
        ],
      );
    } else {
      return Column(
        children: [
          Image.asset(icon, height: 20, width: 20, color: Colors.black),
          Text('$text', style: primaryTextStyle(color: Colors.black)),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomTab(),
      body: _pages[_selectedItemIndex],
    );
  }

  var isSelected = 1;

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
            shape: BoxShape.circle, color: Colors.blue
        ) : BoxDecoration(),
        child: SvgPicture.asset(
          icon,
          width: 20,
          height: 20,
          color: isSelected == pos ? Color(0XFFFCE8E8) : Colors.blue,
        ),
      ),
    );
  }
}