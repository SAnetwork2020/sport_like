import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../../constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../locator.dart';
import '../../../../routes/route_names.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/custom_textformfied.dart';
import '../../../../utils/default_btn.dart';
import '../../../../utils/snack_bar_utils.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                    "Create an account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                      height: 40.toLineHeight(28),
                    ),
                  ),
                  Text(
                    "Welcome back, you’ve been missed!",
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
                    controller: fullnameController,
                    hintText: "Full Name",
                    icon: Assets.icons.person,
                    validator: (value) => value != null && value.length < 6
                        ? "Please Enter your Full Name"
                        : null,
                  ),
                  14.toColumnSizedBox(),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Email",
                    icon: Assets.icons.email,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? "Enter a valid email"
                            : null,
                  ),
                  14.toColumnSizedBox(),
                  CustomTextFormField(
                    controller: phoneController,
                    hintText: "+234",
                    icon: Assets.icons.phone,
                    validator: (value) => value != null && value.length < 11
                        ? "Please Enter 11 digit Phone Number"
                        : null,
                  ),
                  14.toColumnSizedBox(),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: "Password",
                    icon: Assets.icons.lock,
                    validator: (value) => value != null && value.length < 6
                        ? "Enter a min. 6 characters"
                        : null,
                  ),
                  49.toColumnSizedBox(),
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
                  12.toColumnSizedBox(),
                  DefaultButton(
                    onTap: () {
                      signUp();
                    },
                    title: "Register",
                  ),
                  16.toColumnSizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    final isValid = _formKey.currentState!.validate();
    // if (isValid) return;
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      getIt<AppRouter>().pushNamed(verifyemailScreen);
    } on FirebaseAuthException catch (e) {
      print(e);
      // Utils.showSnackBar(e.message);
    }
  }
}
