import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../../constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../locator.dart';
import '../../../../routes/route_names.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/default_btn.dart';

class FollowSports extends StatelessWidget {
  FollowSports({super.key});
  final List<Map<String, dynamic>> favourites = [
    {
      "title": "Football",
      "checkstatus": true,
      "icon": Assets.icons.football,
    },
    {
      "title": "Tennis",
      "checkstatus": false,
      "icon": Assets.icons.tennis,
    },
    {
      "title": "Golf",
      "checkstatus": false,
      "icon": Assets.icons.golf,
    },
    {
      "title": "Basketball",
      "checkstatus": true,
      "icon": Assets.icons.basketball,
    },
    {
      "title": "Motosport",
      "checkstatus": false,
      "icon": Assets.icons.motosport,
    },
    {
      "title": "Skiing",
      "checkstatus": true,
      "icon": Assets.icons.skiing,
    },
    {
      "title": "Rugby",
      "checkstatus": false,
      "icon": Assets.icons.rugby,
    },
    {
      "title": "Ice Hockey",
      "checkstatus": false,
      "icon": Assets.icons.iceHockey,
    },
    {
      "title": "Shooting",
      "checkstatus": false,
      "icon": Assets.icons.shooting,
    },
    {
      "title": "Cricket",
      "checkstatus": false,
      "icon": Assets.icons.cricket,
    },
    {
      "title": "Boxing",
      "checkstatus": false,
      "icon": Assets.icons.boxing,
    },
    {
      "title": "Horse Racing",
      "checkstatus": false,
      "icon": Assets.icons.horseRacing,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                68.toColumnSizedBox(),
                Text(
                  "Follow Sports",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    height: 26.toLineHeight(18),
                  ),
                ),
                8.toColumnSizedBox(),
                Text(
                  "Select to follow one or more sports. These \nwill appear in your favourites tab",
                  style: TextStyle(
                    color: kGrayColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 21.toLineHeight(14),
                  ),
                ),
                40.toColumnSizedBox(),
                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.w,
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: List.generate(
                    favourites.length,
                    (index) => FavouriteSports(
                      checkedStatus: favourites[index]["checkstatus"],
                      icon: favourites[index]["icon"],
                      title: favourites[index]["title"],
                    ),
                  ),
                ),
                92.toColumnSizedBox(),
                DefaultButton(
                  onTap: () =>
                      getIt<AppRouter>().pushNamed(registercompleteScreen),
                  title: 'Done',
                ),
                80.toColumnSizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavouriteSports extends StatelessWidget {
  const FavouriteSports({
    super.key,
    required this.icon,
    required this.title,
    required this.checkedStatus,
  });
  final String icon, title;
  final bool checkedStatus;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(16.w),
        // margin: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: checkedStatus ? const Color(0xffF5FFFA) : kWhite,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: const Color(0xffeaedf1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(icon),
            10.toRowSizedBox(),
            Text(
              title,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                height: 21.toLineHeight(14),
              ),
            ),
            12.toRowSizedBox(),
            SvgPicture.asset(
              checkedStatus ? Assets.icons.check : Assets.icons.uncheck,
            ),
          ],
        ),
      ),
    );
  }
}
 // Container(
                  //   padding: EdgeInsets.all(16.w),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16),
                  //     border: Border.all(
                  //       color: const Color(0xffeaedf1),
                  //     ),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       SvgPicture.asset(Assets.icons.football),
                  //       16.toRowSizedBox(),
                  //       Text(
                  //         "Golf",
                  //         style: TextStyle(
                  //           color: kPrimaryColor,
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 14.sp,
                  //           height: 21.toLineHeight(14),
                  //         ),
                  //       ),
                  //       16.toRowSizedBox(),
                  //       SvgPicture.asset(Assets.icons.check),
                  //     ],
                  //   ),
                  // ),