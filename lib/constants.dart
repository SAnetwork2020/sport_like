import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/utils/extensions.dart';

const kPrimaryColor = Color(0xff111847);
const kWhite = Color(0xffffffff);
const kNeutralGrey = Color(0xff888CA4);
const kGrayColor = Color(0xff8E8E93);
const kPrimaryRadialGradient = RadialGradient(
  transform: GradientRotation(180),
  colors: [
    Color(0xffff488A),
    Color(0xffff4848),
  ],
);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomRight,
  colors: [Color(0xffffa53e), Color(0xffff7643)],
);
const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5.toLineHeight(28),
);

const defaultDuration = Duration(milliseconds: 250);

//Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid email';
const String kPassNullError = 'Please Enter your password';
const String kConfPassNullError = 'Please Enter Confirm password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = "Password don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 15.h,
    horizontal: 15.h,
  ),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      22.w,
    ),
    borderSide: const BorderSide(color: kNeutralGrey),
  );
}
