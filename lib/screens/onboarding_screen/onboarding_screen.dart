import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../constants.dart';
import '../../gen/assets.gen.dart';
import '../../locator.dart';
import '../../routes/routes.gr.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -188.w,
            top: -17,
            child: Assets.images.bg1.image(
              width: 585.8.w,
              height: 585.8.w,
            ),
          ),
          Positioned(
            left: 35.w,
            right: 35.w,
            bottom: 83.h,
            child: Column(
              children: [
                Text(
                  "Find, Network and \nShow your sports talents",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 26.sp,
                    height: 40.toLineHeight(26),
                  ),
                ),
                8.toColumnSizedBox(),
                Text(
                  "Find sports friends nearby",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kNeutralGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    height: 12.95.toLineHeight(12),
                  ),
                ),
                28.toColumnSizedBox(),
                GestureDetector(
                  onTap: () => getIt<AppRouter>().pushNamed(welcomeScreen),
                  child: Container(
                    height: 60.w,
                    width: 60.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kPrimaryRadialGradient,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: SvgPicture.asset(Assets.icons.forward),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
