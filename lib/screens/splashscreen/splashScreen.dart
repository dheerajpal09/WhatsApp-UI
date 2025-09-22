import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localdb/screens/onboarding/onBoardingScreen.dart';
import 'package:localdb/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp_icon.png'),
            SizedBox(height: 10),
            Uihelper.customText(
              text: "WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
