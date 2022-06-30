import 'package:flutter/material.dart';
import 'package:plukks/View/onBoarding/onBoarding.dart';
import 'package:plukks/res/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const OnBoarding_View())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}
