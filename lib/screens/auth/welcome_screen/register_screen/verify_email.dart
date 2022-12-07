import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/utils/extensions.dart';
import 'package:sport_like/utils/snack_bar_utils.dart';

import '../../../../constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../locator.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/default_btn.dart';
import '../../../../utils/gradient_button.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final user = FirebaseAuth.instance.currentUser!;
  bool isEmailVerified = false;
  Timer? timer;
  @override
  void initState() {
    //Check user verification status
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVerified) {
      sendVerificationEmail();
      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
    super.initState();
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVerified) timer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

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
                "Verify Email",
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
                  text:
                      "Click on the verification link we have sent to\n your email ",
                  style: TextStyle(
                    color: kNeutralGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    height: 17.1.toLineHeight(12),
                  ),
                  children: [
                    TextSpan(
                      text: "${user.email}",
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
              SizedBox(
                width: 187,
                child: GradientButton(
                  onTap: () =>
                      getIt<AppRouter>().pushNamed("verifyemailregisterScreen"),
                  title: "Go to Mail",
                ),
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
                onTap: () => getIt<AppRouter>().pushNamed(verifyphoneScreen),
                title: "Skip",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      print(e);
      // Utils.showSnackBar(e.message);
    }
  }
}
