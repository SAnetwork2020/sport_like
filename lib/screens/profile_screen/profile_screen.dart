import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_like/locator.dart';
import 'package:sport_like/routes/route_names.dart';
import 'package:sport_like/routes/routes.gr.dart';
import 'package:sport_like/utils/extensions.dart';

import '../../constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 100.w,
                width: 100.w,
                child: CircleAvatar(
                  child: (user == null)
                      ? const Text("PhotoUrl")
                      : Image.network("${user.photoURL}"),
                ),
              ),
            ),
            16.toColumnSizedBox(),
            Text(
              "Welcome to Sport-Like ${user.email}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
                height: 40.toLineHeight(28),
              ),
            ),
            16.toColumnSizedBox(),
            Text(
              "Phone Number: ${user.phoneNumber}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
                height: 40.toLineHeight(28),
              ),
            ),
            16.toColumnSizedBox(),
            TextButton(
              onPressed: () {
                getIt<AppRouter>().popUntilRoot();
                FirebaseAuth.instance.signOut();
              },
              child: Text(
                "Logout",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                  height: 40.toLineHeight(28),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Center(
      //             child: Text("${user.email} \nWelcome to  Profile Page"),
      //           ),
      //           TextButton(
      //             onPressed: () {
      //               FirebaseAuth.instance.signOut();
      //             },
      //             child: const Text("Sign Out"),
      //           ),
      //         ],
      //       );
      //     } else {
      //       return const LoginScreen();
      //     }
      //   },
      // ),