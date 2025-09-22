import 'package:flutter/material.dart';
import 'package:localdb/screens/login/logInScreen.dart';
import 'package:localdb/widgets/uihelper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/welcome_icon.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "Welcome to WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Uihelper.customText(text: "Read out ", height: 14),
                  Uihelper.customText(
                    text: "Privacy Policy.",
                    height: 14,
                    color: Color(0XFF0C42CC),
                  ),
                  Uihelper.customText(
                    text: "Tap “Agree and continue” ",
                    height: 14,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Uihelper.customText(text: "to accept the", height: 14),
                  Uihelper.customText(
                    text: "Teams of Service.",
                    height: 14,
                    color: Color(0XFF0C42CC),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogInScreen()),
          );
        },
        buttonName: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
