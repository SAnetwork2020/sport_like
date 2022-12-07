// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../screens/auth/auth_screen.dart' as _i3;
import '../screens/auth/welcome_screen/login_screen/forgot_password.dart'
    as _i14;
import '../screens/auth/welcome_screen/login_screen/login.dart' as _i13;
import '../screens/auth/welcome_screen/login_screen/login_screen_base.dart'
    as _i7;
import '../screens/auth/welcome_screen/register_screen/follow_sports.dart'
    as _i11;
import '../screens/auth/welcome_screen/register_screen/register_complete.dart'
    as _i12;
import '../screens/auth/welcome_screen/register_screen/register_screen.dart'
    as _i8;
import '../screens/auth/welcome_screen/register_screen/register_screen_base.dart'
    as _i6;
import '../screens/auth/welcome_screen/register_screen/verify_email.dart'
    as _i9;
import '../screens/auth/welcome_screen/register_screen/verify_phone.dart'
    as _i10;
import '../screens/auth/welcome_screen/welcome.dart' as _i5;
import '../screens/buddies_screen/buddies_screen.dart' as _i16;
import '../screens/discover_screen/discover_screen.dart' as _i17;
import '../screens/nav_screen.dart' as _i4;
import '../screens/onboarding_screen/onboarding_screen.dart' as _i2;
import '../screens/profile_screen/profile_screen.dart' as _i15;
import '../screens/setting_screen/settings_screen.dart' as _i18;
import '../screens/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AuthScreen(),
      );
    },
    NavScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NavScreen(),
      );
    },
    WelcomeScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.WelcomeScreen(),
      );
    },
    RegisterScreenBaseRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.RegisterScreenBase(),
      );
    },
    LoginScreenBaseRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.LoginScreenBase(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.RegisterScreen(key: args.key),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.VerifyEmail(),
      );
    },
    VerifyPhoneRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.VerifyPhone(),
      );
    },
    FollowSportsRoute.name: (routeData) {
      final args = routeData.argsAs<FollowSportsRouteArgs>(
          orElse: () => const FollowSportsRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.FollowSports(key: args.key),
      );
    },
    RegisterCompleteRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.RegisterComplete(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.LoginScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ForgotPassword(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.Profile(),
      );
    },
    BuddiesRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.Buddies(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.Discover(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.Settings(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i19.RouteConfig(
          OnboardingScreenRoute.name,
          path: '/onboarding',
        ),
        _i19.RouteConfig(
          AuthScreenRoute.name,
          path: '/auth',
          children: [
            _i19.RouteConfig(
              '#redirect',
              path: '',
              parent: AuthScreenRoute.name,
              redirectTo: 'welcome',
              fullMatch: true,
            ),
            _i19.RouteConfig(
              WelcomeScreenRoute.name,
              path: 'welcome',
              parent: AuthScreenRoute.name,
            ),
            _i19.RouteConfig(
              RegisterScreenBaseRoute.name,
              path: 'register',
              parent: AuthScreenRoute.name,
              children: [
                _i19.RouteConfig(
                  RegisterScreenRoute.name,
                  path: '',
                  parent: RegisterScreenBaseRoute.name,
                ),
                _i19.RouteConfig(
                  VerifyEmailRoute.name,
                  path: 'verify_email',
                  parent: RegisterScreenBaseRoute.name,
                ),
                _i19.RouteConfig(
                  VerifyPhoneRoute.name,
                  path: 'verify_phone',
                  parent: RegisterScreenBaseRoute.name,
                ),
                _i19.RouteConfig(
                  FollowSportsRoute.name,
                  path: 'follow_sports',
                  parent: RegisterScreenBaseRoute.name,
                ),
                _i19.RouteConfig(
                  RegisterCompleteRoute.name,
                  path: 'register_complete',
                  parent: RegisterScreenBaseRoute.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              LoginScreenBaseRoute.name,
              path: 'login',
              parent: AuthScreenRoute.name,
              children: [
                _i19.RouteConfig(
                  LoginScreenRoute.name,
                  path: '',
                  parent: LoginScreenBaseRoute.name,
                ),
                _i19.RouteConfig(
                  ForgotPasswordRoute.name,
                  path: 'forgot_password',
                  parent: LoginScreenBaseRoute.name,
                ),
              ],
            ),
          ],
        ),
        _i19.RouteConfig(
          NavScreenRoute.name,
          path: '/tab',
          children: [
            _i19.RouteConfig(
              '#redirect',
              path: '',
              parent: NavScreenRoute.name,
              redirectTo: 'profile',
              fullMatch: true,
            ),
            _i19.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: NavScreenRoute.name,
            ),
            _i19.RouteConfig(
              BuddiesRoute.name,
              path: 'buddies',
              parent: NavScreenRoute.name,
            ),
            _i19.RouteConfig(
              DiscoverRoute.name,
              path: 'discover',
              parent: NavScreenRoute.name,
            ),
            _i19.RouteConfig(
              SettingsRoute.name,
              path: 'settings',
              parent: NavScreenRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i19.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreenRoute extends _i19.PageRouteInfo<void> {
  const OnboardingScreenRoute()
      : super(
          OnboardingScreenRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingScreenRoute';
}

/// generated route for
/// [_i3.AuthScreen]
class AuthScreenRoute extends _i19.PageRouteInfo<void> {
  const AuthScreenRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AuthScreenRoute.name,
          path: '/auth',
          initialChildren: children,
        );

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i4.NavScreen]
class NavScreenRoute extends _i19.PageRouteInfo<void> {
  const NavScreenRoute({List<_i19.PageRouteInfo>? children})
      : super(
          NavScreenRoute.name,
          path: '/tab',
          initialChildren: children,
        );

  static const String name = 'NavScreenRoute';
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeScreenRoute extends _i19.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: 'welcome',
        );

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i6.RegisterScreenBase]
class RegisterScreenBaseRoute extends _i19.PageRouteInfo<void> {
  const RegisterScreenBaseRoute({List<_i19.PageRouteInfo>? children})
      : super(
          RegisterScreenBaseRoute.name,
          path: 'register',
          initialChildren: children,
        );

  static const String name = 'RegisterScreenBaseRoute';
}

/// generated route for
/// [_i7.LoginScreenBase]
class LoginScreenBaseRoute extends _i19.PageRouteInfo<void> {
  const LoginScreenBaseRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginScreenBaseRoute.name,
          path: 'login',
          initialChildren: children,
        );

  static const String name = 'LoginScreenBaseRoute';
}

/// generated route for
/// [_i8.RegisterScreen]
class RegisterScreenRoute extends _i19.PageRouteInfo<RegisterScreenRouteArgs> {
  RegisterScreenRoute({_i20.Key? key})
      : super(
          RegisterScreenRoute.name,
          path: '',
          args: RegisterScreenRouteArgs(key: key),
        );

  static const String name = 'RegisterScreenRoute';
}

class RegisterScreenRouteArgs {
  const RegisterScreenRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'RegisterScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.VerifyEmail]
class VerifyEmailRoute extends _i19.PageRouteInfo<void> {
  const VerifyEmailRoute()
      : super(
          VerifyEmailRoute.name,
          path: 'verify_email',
        );

  static const String name = 'VerifyEmailRoute';
}

/// generated route for
/// [_i10.VerifyPhone]
class VerifyPhoneRoute extends _i19.PageRouteInfo<void> {
  const VerifyPhoneRoute()
      : super(
          VerifyPhoneRoute.name,
          path: 'verify_phone',
        );

  static const String name = 'VerifyPhoneRoute';
}

/// generated route for
/// [_i11.FollowSports]
class FollowSportsRoute extends _i19.PageRouteInfo<FollowSportsRouteArgs> {
  FollowSportsRoute({_i20.Key? key})
      : super(
          FollowSportsRoute.name,
          path: 'follow_sports',
          args: FollowSportsRouteArgs(key: key),
        );

  static const String name = 'FollowSportsRoute';
}

class FollowSportsRouteArgs {
  const FollowSportsRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'FollowSportsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.RegisterComplete]
class RegisterCompleteRoute extends _i19.PageRouteInfo<void> {
  const RegisterCompleteRoute()
      : super(
          RegisterCompleteRoute.name,
          path: 'register_complete',
        );

  static const String name = 'RegisterCompleteRoute';
}

/// generated route for
/// [_i13.LoginScreen]
class LoginScreenRoute extends _i19.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i14.ForgotPassword]
class ForgotPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: 'forgot_password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i15.Profile]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i16.Buddies]
class BuddiesRoute extends _i19.PageRouteInfo<void> {
  const BuddiesRoute()
      : super(
          BuddiesRoute.name,
          path: 'buddies',
        );

  static const String name = 'BuddiesRoute';
}

/// generated route for
/// [_i17.Discover]
class DiscoverRoute extends _i19.PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: 'discover',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [_i18.Settings]
class SettingsRoute extends _i19.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
