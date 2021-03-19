import 'package:fairship_agent/constants.dart';
import 'package:flutter/material.dart';

import 'package:fairship_agent/screens/splashscreen.dart';
import 'package:fairship_agent/screens/auth/login.dart';
import 'package:fairship_agent/screens/auth/register.dart';
import 'package:fairship_agent/screens/auth/otp_verification.dart';
import 'package:fairship_agent/screens/auth/choose_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fairship Agent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseType(),
      routes: {
        kLoginScreen: (ctx) => LoginScreen(),
        kRegisterScreen: (ctx) => RegisterScreen(),
        kSplashScreen: (ctx) => SplashScreen(),
        kOtpVerificationScreen: (ctx) => OtpVerificationScreen(),
        kChooseTypeScreen: (ctx) => ChooseType(),
      },
    );
  }
}
