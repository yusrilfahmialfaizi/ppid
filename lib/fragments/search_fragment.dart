import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ppid_mobile/screens/dashboard_screen.dart';

import '../constants.dart';

class Search extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Colors.white),
        //     onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen())),
        //   ),
        // ),
        body: Observer(builder: (_) =>
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, color: kPrimaryColor),
                  padding: EdgeInsets.only(top: 30),
                  onPressed: () =>
                      Navigator.of(context).pop(),
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 0, top: 46, bottom: 16, right: 16),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: <Widget>[
                          SizedBox(height: 16),
                          TextField(
                            style: primaryTextStyle(),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: context.scaffoldBackgroundColor,
                              hintText: "Search",
                              hintStyle: primaryTextStyle(color: kHintTextColor),
                              contentPadding: EdgeInsets.only(
                                  left: 26.0,
                                  bottom: 8.0,
                                  top: 8.0,
                                  right: 50.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: kPrimaryColor, width: 0.5),
                                borderRadius: BorderRadius.circular(26),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: kPrimaryColor, width: 0.5),
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: SvgPicture.asset(
                                  "images/theme2/t2_search.svg",
                                  color: kPrimaryColor),
                            ),
                          )
                        ],
                      ),
                    )
                )
              ],
            )
          //   builder: (_) => Column(
          //     children: <Widget>[
          //       IconButton(
          //         icon: Icon(Icons.arrow_back, color: kPrimaryColor),
          //         onPressed: () => Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => DashboardScreen())),
          //       ),
          //       Padding(
          //         padding:
          //             EdgeInsets.only(left: 50, top: 16, bottom: 16, right: 16),
          //         child: Stack(
          //           alignment: Alignment.centerRight,
          //           children: <Widget>[
          //             SizedBox(height: 16),
          //             TextField(
          //               style: primaryTextStyle(),
          //               decoration: InputDecoration(
          //                 filled: true,
          //                 fillColor: context.scaffoldBackgroundColor,
          //                 hintText: "Search",
          //                 hintStyle: primaryTextStyle(color: Colors.grey),
          //                 contentPadding: EdgeInsets.only(
          //                     left: 26.0, bottom: 8.0, top: 8.0, right: 50.0),
          //                 focusedBorder: OutlineInputBorder(
          //                   borderSide:
          //                       BorderSide(color: kPrimaryColor, width: 0.5),
          //                   borderRadius: BorderRadius.circular(26),
          //                 ),
          //                 enabledBorder: OutlineInputBorder(
          //                   borderSide:
          //                       BorderSide(color: kPrimaryColor, width: 0.5),
          //                   borderRadius: BorderRadius.circular(26),
          //                 ),
          //               ),
          //             ),
          //             GestureDetector(
          //               child: Padding(
          //                 padding: EdgeInsets.only(right: 16.0),
          //                 child: SvgPicture.asset("images/theme2/t2_search.svg",
          //                     color: kPrimaryColor),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
        ));
  }
}
