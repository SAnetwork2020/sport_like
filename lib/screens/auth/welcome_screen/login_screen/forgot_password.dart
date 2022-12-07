import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../../constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../locator.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/custom_textformfied.dart';
import '../../../../utils/default_btn.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: SingleChildScrollView(
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
                    "Password Reset",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                      height: 40.toLineHeight(28),
                    ),
                  ),
                  Text(
                    "Please enter your email or phone number to recieve email and reset your password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kNeutralGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      height: 17.1.toLineHeight(12),
                    ),
                  ),
                  64.toColumnSizedBox(),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Email",
                    icon: Assets.icons.email,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? "Enter a valid email"
                            : null,
                  ),
                  16.toColumnSizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Reset Password with Phone number",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kNeutralGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            height: 17.1.toLineHeight(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  49.toColumnSizedBox(),
                  DefaultButton(
                    onTap: () {
                      verifyEmail();
                    },
                    title: "Reset Password",
                  ),
                  12.toColumnSizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//Password Reset Method for Firebase
  Future verifyEmail() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim(),
      );
      // Utils.showSnackBar(
      //   "Password Reset link has been sent to your Email Address",
      // );
      context.router.popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print(e);
      // Utils.showSnackBar(e.message);
      context.router.pop();
    }
  }
}
