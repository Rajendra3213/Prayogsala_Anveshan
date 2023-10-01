// packageimport 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/material.dart';
//
// class open extends StatefulWidget {
//   const open({super.key});
//
//   @override
//   State<open> createState() => _openState();
// }
//
// class _openState extends State<open> {
//   void openUnity() {
//     () async {
//       var openAppResult = await LaunchApp.openApp(
//         androidPackageName: 'net.pulsesecure.pulsesecure',
//         iosUrlScheme: 'pulsesecure://',
//         appStoreLink:
//             'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
//         // openStore: false
//       );
//       print('openAppResult => $openAppResult ${openAppResult.runtimeType}');
//       // Enter thr package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
//       // The second arguments decide wether the app redirects PlayStore or AppStore.
//       // For testing purpose you can enter com.instagram.android
//     };
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
