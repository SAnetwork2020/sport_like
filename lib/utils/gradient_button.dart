import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/utils/extensions.dart';

import '../constants.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.onTap,
    required this.title,
  });
  final Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: kPrimaryColor,
          gradient: const RadialGradient(
            center: Alignment(0.0, 1.0),
            colors: [
              Color(0xffff488A),
              Color(0xffff4848),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
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
    );
  }
}
