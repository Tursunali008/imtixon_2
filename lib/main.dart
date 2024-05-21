import 'package:flutter/material.dart';
import 'package:imtixon_2/pages/logo_page.dart';

void main(List<String> args) {
  runApp(const ImtixonApp());
}

class ImtixonApp extends StatelessWidget {
  const ImtixonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoPage(),
    );
  }
}
