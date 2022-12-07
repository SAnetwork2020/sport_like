import 'package:auto_route/auto_route.dart';
import 'package:sport_like/screens/nav_screen.dart';

import '../screens/auth/auth_screen.dart';
import '../screens/auth/welcome_screen/login_screen/forgot_password.dart';
import '../screens/auth/welcome_screen/login_screen/login.dart';
import '../screens/auth/welcome_screen/login_screen/login_screen_base.dart';
import '../screens/auth/welcome_screen/register_screen/register_complete.dart';
import '../screens/auth/welcome_screen/register_screen/follow_sports.dart';
import '../screens/auth/welcome_screen/register_screen/register_screen.dart';
import '../screens/auth/welcome_screen/register_screen/register_screen_base.dart';
import '../screens/auth/welcome_screen/register_screen/verify_email.dart';
import '../screens/auth/welcome_screen/register_screen/verify_phone.dart';
import '../screens/auth/welcome_screen/welcome.dart';
import '../screens/buddies_screen/buddies_screen.dart';
import '../screens/discover_screen/discover_screen.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/setting_screen/settings_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import 'route_names.dart';

@MaterialAutoRouter(
  routes: [
    //Splash Screen Route
    AutoRoute(
      path: splashScreenRoute,
      page: SplashScreen,
      initial: true,
    ),

    //Onboarding Screen Route
    AutoRoute(
      path: onboardingScreenRoute,
      page: OnboardingScreen,
    ),

    //Auth Screen Route
    AutoRoute(
      path: "/auth",
      page: AuthScreen,
      children: [
        AutoRoute(
          path: "welcome",
          page: WelcomeScreen,
          initial: true,
        ),
        AutoRoute(
          path: "register",
          page: RegisterScreenBase,
          children: [
            AutoRoute(
              path: "",
              page: RegisterScreen,
              initial: true,
            ),
            AutoRoute(
              path: "verify_email",
              page: VerifyEmail,
            ),
            AutoRoute(
              path: "verify_phone",
              page: VerifyPhone,
            ),
            AutoRoute(
              path: "follow_sports",
              page: FollowSports,
            ),
            AutoRoute(
              path: "register_complete",
              page: RegisterComplete,
            ),
          ],
        ),
        AutoRoute(
          path: "login",
          page: LoginScreenBase,
          children: [
            AutoRoute(
              path: "",
              page: LoginScreen,
              initial: true,
            ),
            AutoRoute(
              path: "forgot_password",
              page: ForgotPassword,
            ),
          ],
        ),
      ],
    ),

    //Tab Screen Routes
    AutoRoute(
      path: "/tab",
      page: NavScreen,
      children: [
        AutoRoute(
          path: "profile",
          page: Profile,
          initial: true,
        ),
        AutoRoute(
          path: "buddies",
          page: Buddies,
        ),
        AutoRoute(
          path: "discover",
          page: Discover,
        ),
        AutoRoute(
          path: "settings",
          page: Settings,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
