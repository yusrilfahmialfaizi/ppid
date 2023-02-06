import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constants.dart';

class SettingFragment extends StatefulWidget {
  @override
  SettingFragmentState createState() => SettingFragmentState();
}

class SettingFragmentState extends State<SettingFragment> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  void init() async {}

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: context.scaffoldBackgroundColor,
      //   // leading: IconButton(
      //   //   icon: Icon(
      //   //     Icons.arrow_back_ios_new,
      //   //     color: kTextColor,
      //   //   ),
      //   //   onPressed: () {
      //   //
      //   //   },
      //   // ),
      //   actions: [SizedBox(), SizedBox()],
      //   title:
      //       Text("Profile", style: boldTextStyle(size: 18, color: kTextColor)),
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 24),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                width: context.width(),
                height: 200,
                decoration: boxDecorationWithRoundedCorners(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    backgroundColor: kPrimaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new,
                          color: kSecondaryColor),
                      padding: EdgeInsets.only(top: 46),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Expanded(
                        child: Padding(
                        padding: EdgeInsets.only(
                            left: 0, top: 46, bottom: 16, right: 16),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Text(
                                'Account',
                                style: boldTextStyle(
                              color: kSecondaryTextColor, size: 22)),
                          ],
                        ),
                      )
                    ),
                  ],
                )
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //       icon:
                //           Icon(Icons.arrow_back_ios_new, color: kSecondaryColor),
                //       padding: EdgeInsets.only(top: 30),
                //       onPressed: () => Navigator.of(context).pop(),
                //     ),
                //     Text('Account',
                //         style:
                //             boldTextStyle(color: kSecondaryTextColor, size: 22)),
                //     20.height,
                //   ],
                // ),
                // IconButton(
                //   icon:
                //   Icon(Icons.arrow_back_ios_new, color: kSecondaryColor),
                //   padding: EdgeInsets.only(top: 30),
                //   onPressed: () => Navigator.of(context).pop(),
                // ),
                ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 150),
                          width: 100,
                          height: 100,
                          decoration: boxDecorationWithRoundedCorners(
                              boxShape: BoxShape.circle,
                              border: Border.all(color: white, width: 4)),
                          child: Image.asset(
                                  "images/dashboard/utility_tracker/img_user.jpg",
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover)
                              .cornerRadiusWithClipRRect(60)),
                      Positioned(
                        bottom: 8,
                        right: -4,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.all(6),
                          decoration: boxDecorationWithRoundedCorners(
                            backgroundColor: context.cardColor,
                            boxShape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0.4,
                                  blurRadius: 3,
                                  color: gray.withOpacity(0.1),
                                  offset: Offset(1, 6)),
                            ],
                          ),
                          child:
                              Icon(Icons.add, color: kPrimaryColor, size: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                16.height,
                Text('Jhon Doe', style: boldTextStyle(size: 18)).center(),
                8.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("08123456789", style: secondaryTextStyle()),
                    8.width,
                    Container(
                        height: 10, width: 1, color: gray.withOpacity(0.4)),
                    8.width,
                    Text('Kathmandu', style: secondaryTextStyle()),
                  ],
                ),
                SizedBox(height: 16),
                Divider(height: 0),
                SizedBox(height: 16),
                SettingItemWidget(
                  leading: Icon(Icons.person_outline, color: kTextColor),
                  title: "Edit Profile",
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  leading: Icon(Icons.location_on_outlined, color: kTextColor),
                  title: "Address",
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  leading: Icon(Icons.notifications_active_outlined,
                      color: kTextColor),
                  title: "Notification",
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  title: "Payment",
                  leading: Icon(Icons.payment_outlined, color: kTextColor),
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: kButtonColor, size: 18),
                ),
                SettingItemWidget(
                  title: "Security",
                  leading: Icon(Icons.security_outlined, color: kTextColor),
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  title: "Privacy Policy",
                  leading: Icon(CupertinoIcons.lock_shield, color: kTextColor),
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  title: "Help and Support",
                  leading: Icon(Icons.help_center_outlined, color: kTextColor),
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      size: 18, color: kButtonColor),
                ),
                SettingItemWidget(
                  leading: Icon(Icons.login, color: kTextColor),
                  title: "Logout",
                  titleTextStyle: boldTextStyle(color: kTextColor),
                  onTap: () {
                    showConfirmDialogCustom(context, onAccept: (c) {
                      //   LoginWithPassScreen().launch(context);
                    }, dialogType: DialogType.CONFIRMATION);
                  },
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      size: 18, color: kButtonColor),
                ),
              ],
            )
          ],
        ),
        // padding: EdgeInsets.only(bottom: 16),
        // child: Column(
        //   children: [
        //     SizedBox(height: 16),
        //     Stack(
        //       children: [
        //         Image.asset("images/dashboard/utility_tracker/img_user.jpg",
        //                 height: 100, width: 100, fit: BoxFit.cover)
        //             .cornerRadiusWithClipRRect(60),
        //         Positioned(
        //           right: 0,
        //           bottom: 0,
        //           child: Container(
        //             alignment: Alignment.center,
        //             padding: EdgeInsets.all(6),
        //             decoration: BoxDecoration(
        //               color: kBackgroundButtonColor,
        //               border: Border.all(color: kBackgroundButtonColor.withOpacity(0.3)),
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             child: Icon(Icons.edit, color: kButtonColor, size: 16),
        //           ).onTap(() => {}),
        //         )
        //       ],
        //     ),
        //     SizedBox(height: 16),
        //     Text("Jhon Doe", style: boldTextStyle(size: 18, color: kTextColor)),
        //     SizedBox(height: 8),
        //     Text("08123456789", style: secondaryTextStyle(color: kTextColor)),
        //     SizedBox(height: 16),
        //     Divider(height: 0),

        //   SizedBox(height: 16),
        //   SettingItemWidget(
        //     leading: Icon(Icons.person_outline, color: kTextColor),
        //     title: "Edit Profile",
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_rounded,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     leading: Icon(Icons.location_on_outlined, color: kTextColor),
        //     title: "Address",
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_rounded,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     leading:
        //         Icon(Icons.notifications_active_outlined, color: kTextColor),
        //     title: "Notification",
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_rounded,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     title: "Payment",
        //     leading: Icon(Icons.payment_outlined, color: kTextColor),
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_rounded,
        //         color: kButtonColor, size: 18),
        //   ),
        //   SettingItemWidget(
        //     title: "Security",
        //     leading: Icon(Icons.security_outlined, color: kTextColor),
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_outlined,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     title: "Privacy Policy",
        //     leading: Icon(CupertinoIcons.lock_shield, color: kTextColor),
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_outlined,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     title: "Help and Support",
        //     leading: Icon(Icons.help_center_outlined, color: kTextColor),
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {},
        //     trailing: Icon(Icons.arrow_forward_ios_outlined,
        //         size: 18, color: kButtonColor),
        //   ),
        //   SettingItemWidget(
        //     leading: Icon(Icons.login, color: kTextColor),
        //     title: "Logout",
        //     titleTextStyle: boldTextStyle(color: kTextColor),
        //     onTap: () {
        //       showConfirmDialogCustom(context, onAccept: (c) {
        //         //   LoginWithPassScreen().launch(context);
        //       }, dialogType: DialogType.CONFIRMATION);
        //     },
        //     trailing: Icon(Icons.arrow_forward_ios_rounded,
        //         size: 18, color: kButtonColor),
        //   ),
        // ],
        // ),
      ),
    );
  }
}
