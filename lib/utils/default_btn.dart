import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/utils/extensions.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onTap,
    required this.title,
    this.btnColor = kPrimaryColor,
    this.width = double.infinity,
  });
  final Function() onTap;
  final String title;
  final Color? btnColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: btnColor,
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
