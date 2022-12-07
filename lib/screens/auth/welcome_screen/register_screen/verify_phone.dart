import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../../constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../locator.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/default_btn.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              44.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => getIt<AppRouter>().navigateBack(),
                    child: Container(
                      height: 60.w,
                      width: 60.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kWhite,
                          border: Border.all(
                            color: kNeutralGrey,
                            width: 1,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: SvgPicture.asset(Assets.icons.back),
                      ),
                    ),
                  ),
                ],
              ),
              79.toColumnSizedBox(),
              Text(
                "Verify Phone",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                  height: 40.toLineHeight(28),
                ),
              ),
              8.toColumnSizedBox(),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Enter verification code we have sent to \nyour Phone ",
                  style: TextStyle(
                    color: kNeutralGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    height: 17.1.toLineHeight(12),
                  ),
                  children: [
                    TextSpan(
                      text: "+234 7011223344",
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
              48.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    4,
                    (index) => SizedBox(
                      height: 60.h,
                      width: 77.25.w,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                      ),
                    ),
                  ),
                ],
              ),
              16.toColumnSizedBox(),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Didn’t receive the OTP?",
                  style: TextStyle(
                    color: kNeutralGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    height: 12.95.toLineHeight(12),
                  ),
                  children: const [
                    TextSpan(
                      text: " Resend OTP in 0:30",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              264.toColumnSizedBox(),
              DefaultButton(
                onTap: () =>
                    getIt<AppRouter>().pushNamed(followsportsScreen),
                title: "Verify",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
