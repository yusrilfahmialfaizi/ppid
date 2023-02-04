
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/src/picture_provider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:project_lite/dashboard/fragments/search_fragment.dart';
import 'package:project_lite/main.dart';
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
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Hi, Welcome", style: secondaryTextStyle(color: Colors.blue)),
                          6.height,
                          Text("Jhon Doe", style: primaryTextStyle(size: 18, color: Colors.blue),)
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.5),
                          shape: BoxShape.circle
                        ),
                        child: IconButton(
                          onPressed: () {
                            
                          },
                          icon: Image.asset('images/dashboard/smart_home/ic_home_setting.png', height: 20, width: 20, color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                  30.height,
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: radius(15.0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue.withOpacity(0.9),
                          Colors.white.withOpacity(0.2)
                        ],
                        stops: const [0, 0.9],
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(DateFormat('EEEE,').format(DateTime.now()), style: boldTextStyle(size: 18, color: Colors.white)),
                            6.height,
                            Text(DateFormat('d MMM yyyy').format(DateTime.now()), style: boldTextStyle(size: 18, color: Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            // SvgPicture.asset('images/webDashboard1/search.svg', color: Colors.blue, height: 20, width: 20,)
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                                },
                                icon: SvgPicture.asset('images/webDashboard1/search.svg', color: Colors.blue, height: 20, width: 20)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('List', style: primaryTextStyle(color: Colors.blue)),
                      showAllLists(context)
                    ],
                  ),
                  8.height,
                  Wrap(
                    children: [

                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("News", style: primaryTextStyle(color: Colors.blue)),
                      showAllLists(context),
                    ],
                  ),
                  16.height,
                  Wrap(
                    spacing: 28,
                    direction: Axis.horizontal,
                    children: [
                      
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Devices", style: primaryTextStyle(color: Colors.blue)),
                      showAllLists(context)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}