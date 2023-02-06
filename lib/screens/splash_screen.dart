import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ppid_mobile/constants.dart';

import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  SplashScreenState createState() => SplashScreenState();

}

class SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }
  
  Future<void> init() async {
    // await Future.delayed(Duration(seconds: 3));
    // Navigator.pop(context);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
  }
  
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    if (mounted) super.setState(fn);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return AnimatedSplashScreen(
      splash: "images/ppid/ppid.png",
      nextScreen: DashboardScreen(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
      backgroundColor: kBackgroundColor,
    );
    // return Scaffold(
    //   body: Align(
    //     alignment: Alignment(-0.0, -1.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         Image(image: AssetImage("images/ppid/ppid.png"), height: 60, width: 180, fit: BoxFit.cover),
    //         SizedBox(height: 8)
    //       ],
    //     ),
    //   ),
    // );
  }

}