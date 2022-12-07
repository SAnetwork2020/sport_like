import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/locator.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/routes/routes.gr.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../constants.dart';
import '../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoNextScreen();
    super.initState();
  }

  gotoNextScreen() {
    Future.delayed(
      const Duration(seconds: 5),
      () => getIt<AppRouter>().replaceNamed(onboardingScreenRoute),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Assets.images.logo.image(),
            16.toColumnSizedBox(),
            Text(
              "Sport-Like",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
                height: 25.9.toLineHeight(24),
              ),
            ),
            // 48.toColumnSizedBox(),
            const Spacer(),
            const Center(
              child: CircularProgressIndicator(
                color: kWhite,
                strokeWidth: 8,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
