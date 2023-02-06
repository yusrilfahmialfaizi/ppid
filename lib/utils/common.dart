import 'package:flutter/material.dart';
import 'package:ppid_mobile/utils/colors.dart';
import 'package:ppid_mobile/main.dart';

import '../constants.dart';

Gradient primaryHomeLinearGradient() {
  return LinearGradient(
    colors: [kBlackColor, kBlack87Color],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.6, 1],
  );
}

Gradient primaryHomeLinearDarkGradient() {
  return LinearGradient(
    colors: [kPrimaryColor, Colors.white70],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.6, 1],
  );
}

Widget showAllLists(BuildContext context){
  return Container(
    height: 22,
    width: 40,
    decoration: BoxDecoration(
      // color: appStore.isDarkModeOn ? Colors.white.withOpacity(0.2) : Colors.white.withOpacity(0.9),
      color: kBackgroundButtonColor.withOpacity(0.9),
      borderRadius: BorderRadius.all(Radius.elliptical(70, 70)),
    ),
    child: IconButton(
      padding: EdgeInsets.only(top: 0),
      onPressed: () {
        //
      },
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          // Icon(Icons.circle, color: appStore.isDarkModeOn ? Colors.white : Colors.black, size: 6),
          // Icon(Icons.circle, color: appStore.isDarkModeOn ? Colors.white : Colors.black, size: 6),
          Icon(Icons.circle, color: kButtonColor, size: 6),
          Icon(Icons.circle, color: kButtonColor, size: 6),
        ],
      ),
    ),
  );
}