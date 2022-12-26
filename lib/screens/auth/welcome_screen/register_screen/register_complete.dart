import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../../../constants.dart';
import '../../../../locator.dart';
import '../../../../routes/routes.gr.dart';
import '../../../../utils/gradient_button.dart';

class RegisterComplete extends StatelessWidget {
  const RegisterComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const Spacer(),
            Text(
              "Your Account is\nnow complete",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
                height: 40.toLineHeight(28),
              ),
            ),
            Text(
              "You’re ready to go. Have fun!",
              style: TextStyle(
                color: kNeutralGrey,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                height: 17.1.toLineHeight(12),
              ),
            ),
            12.toColumnSizedBox(),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "Want a different goals?",
                style: TextStyle(
                  color: kNeutralGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  height: 12.95.toLineHeight(12),
                ),
                children: const [
                  TextSpan(
                    text: " Click in here",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            18.toColumnSizedBox(),
            GradientButton(
              onTap: () {
                getIt<AppRouter>().pushNamed(profileTabScreen);
              },
              title: "Explore Gowez",
            ),
            24.toColumnSizedBox(),
          ],
        ),
      ),
    );
  }
}
