import 'package:flutter/material.dart';
import 'dart:async';
import 'package:imtixon_2/pages/page_img.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const EventScreens(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 211, height: 211),
      ),
    );
  }
}
