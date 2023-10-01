import 'package:flutter/material.dart';
import 'package:hackfest/Experiment.dart';
import 'package:hackfest/OnClick.dart';
import 'package:hackfest/landingPage.dart';
import 'package:hackfest/loadingScreen.dart';
import 'package:hackfest/loginDetails.dart';
import 'package:hackfest/userprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginDemo(),
        '/first': (context) => loadingScreen(),
        '/second': (context) => landingPage(),
        '/third': (context) => OnClick(),
        '/fourth': (context) => ExperimentPage(),
        '/user':(context) => UserInfo()
      },
      // home: LoginDemo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212629),
      ),
    );
  }
}
