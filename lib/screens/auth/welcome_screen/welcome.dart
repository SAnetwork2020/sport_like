import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../constants.dart';
import '../../../gen/assets.gen.dart';
import '../../../locator.dart';
import '../../../routes/routes.gr.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -142,
          top: -17,
          child: Assets.images.bg2.image(
            width: 585.8.w,
            height: 585.8.w,
          ),
        ),
        Positioned(
          left: 24.w,
          right: 24.w,
          bottom: 80.h,
          child: Column(
            children: [
              Text(
                "Welcome!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                  height: 40.toLineHeight(28),
                ),
              ),
              Text(
                "You are only a few steps away!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  height: 12.95.toLineHeight(12),
                ),
              ),
              42.toColumnSizedBox(),
              GestureDetector(
                onTap: () => getIt<AppRouter>().pushNamed(registerScreen),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: kPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        height: 12.95.toLineHeight(12),
                      ),
                    ),
                  ),
                ),
              ),
              12.toColumnSizedBox(),
              Text.rich(
                TextSpan(
                  text: "Already a member? ",
                  style: TextStyle(
                    color: kNeutralGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    height: 17.1.toLineHeight(12),
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => getIt<AppRouter>().pushNamed(loginScreen),
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        height: 17.1.toLineHeight(12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
