import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginScreenBase extends StatelessWidget {
  const LoginScreenBase({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutoRouter(),
    );
  }
}