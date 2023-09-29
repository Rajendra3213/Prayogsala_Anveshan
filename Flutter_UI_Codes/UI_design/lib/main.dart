import 'package:flutter/material.dart';
import 'package:hackfest/landingPage.dart';
import 'package:hackfest/loadingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212629),
      ),
    );
  }
}
