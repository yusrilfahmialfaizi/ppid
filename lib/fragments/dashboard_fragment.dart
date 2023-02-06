import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/src/picture_provider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ppid_mobile/fragments/search_fragment.dart';
import 'package:ppid_mobile/fragments/setting_fragment.dart';
import 'package:ppid_mobile/main.dart';
import '../constants.dart';
import '../utils/common.dart';
import '../utils/constant.dart';
import 'package:intl/intl.dart';

class DashboardFragment extends StatefulWidget {
  @override
  DashboardFragmentState createState() => DashboardFragmentState();
}

class DashboardFragmentState extends State<DashboardFragment> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 20, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Hi, Welcome",
                              style: secondaryTextStyle(color: kTextColor)),
                          6.height,
                          Text(
                            "Jhon Doe",
                            style:
                                primaryTextStyle(size: 18, color: kTextColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {

                              },
                              child: Icon(Icons.notifications_rounded, color: kPrimaryColor)
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingFragment()));
                            },
                            child: Image.asset(
                                    "images/dashboard/utility_tracker/img_user.jpg",
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover)
                                .cornerRadiusWithClipRRect(40),
                          ),
                        ],
                      )
                    ],
                  ),
                  30.height,
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: radius(15.0),
                        // color: kPrimaryColor
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kPrimaryColor.withOpacity(1),
                            kPrimaryColor.withOpacity(0.2)
                          ],
                          stops: const [0, 0.9],
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(DateFormat('EEEE,').format(DateTime.now()),
                                style: boldTextStyle(
                                    size: 18, color: kSecondaryTextColor)),
                            6.height,
                            Text(
                                DateFormat('d MMM yyyy').format(DateTime.now()),
                                style: boldTextStyle(
                                    size: 18, color: kSecondaryTextColor)),
                          ],
                        ),
                        Row(
                          children: [
                            // SvgPicture.asset('images/webDashboard1/search.svg', color: kSecondaryColor, height: 20, width: 20,)
                            IconButton(
                                onPressed: () {
                                  // Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Search()));
                                },
                                icon: SvgPicture.asset(
                                    'images/webDashboard1/search.svg',
                                    color: kSecondaryColor,
                                    height: 20,
                                    width: 20))
                          ],
                        )
                      ],
                    ),
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('List', style: primaryTextStyle(color: kTextColor)),
                      showAllLists(context)
                    ],
                  ),
                  8.height,
                  Wrap(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 8,
                          title: Text(
                            'PERMOHONAN INFORMASI',
                            style:
                                primaryTextStyle(color: kTextColor, size: 14),
                          ),
                          subtitle: Text(
                            '0 item',
                            style: secondaryTextStyle(color: kTextColor),
                          ),
                          leading: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.9),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "images/dashboard/health_medical/ic_notification.png",
                              height: 20,
                              width: 20,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 8,
                          title: Text(
                            'PENGAJUAN KEBERATAN',
                            style:
                                primaryTextStyle(color: kTextColor, size: 14),
                          ),
                          subtitle: Text(
                            '0 item',
                            style: secondaryTextStyle(color: kTextColor),
                          ),
                          leading: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: kDangerColor.withOpacity(0.9),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "images/warning.png",
                              height: 20,
                              width: 20,
                              color: kSecondaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Berita",
                          style: primaryTextStyle(color: kTextColor)),
                      showAllLists(context),
                    ],
                  ),
                  16.height,
                  Wrap(
                    spacing: 28,
                    direction: Axis.horizontal,
                    children: [],
                  ),
                  20.height,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
