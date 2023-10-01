//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:hackfest/Expandable.dart';
import 'package:url_launcher/url_launcher.dart';


class ExperimentPage extends StatefulWidget {
  const ExperimentPage({super.key});

  @override
  State<ExperimentPage> createState() => _ExperimentPageState();
}

void function() async {
  var isAppInstalled = await LaunchApp.isAppInstalled(
      androidPackageName: 'com.vuforia.engine.VuforiaEngine');

  if (isAppInstalled) {
    var openAppResult = await LaunchApp.openApp(
      androidPackageName: 'com.vuforia.engine.VuforiaEngine',
    //androidPackageName: 'com.DefaultCompany.Ground_detect',
        openStore: false);
    print('Unity app opened: $openAppResult');
  } else {
    print('Unity app is not installed on the device');
    // Handle the case where the app is not installed, e.g., show a message to the user.
  }
}

// void function() async {
//   var openAppResult = await LaunchApp.openApp(
//       androidPackageName: 'com.instagram.android',
//       // iosUrlScheme: 'pulsesecure://',
//       // appStoreLink:
//       // 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
//       openStore: false);
//   print('openAppResult => $openAppResult ${openAppResult.runtimeType}');
//   // Enter thr package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
//   // The second arguments decide wether the app redirects PlayStore or AppStore.
//   // For testing purpose you can enter com.instagram.android
// }

class _ExperimentPageState extends State<ExperimentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "lib/Assets/images/physics-background-black-024246039_prevstill.webp"),
                    fit: BoxFit.cover),
                color: Colors.black54.withOpacity(0.6),
                border: BorderDirectional(bottom: BorderSide.none),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Momentum",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Conservation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        function();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFB9E13),
                      ),
                      child: Text("Enter AR lab"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("lib/Assets/images/pendulum.gif",
                              width: 200),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fig:Geometrical Visualization",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Column(
                        children: [
                          Text(
                            "Harmonic",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Motion",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExpandableText(
                      text:
                          "The Logic Behind Momentum Conservation ΩConsider a collision between two objects - object 1 and object 2. For such a collision, the forces acting between the two objects are equal in magnitude and opposite in direction (Newton's third law). This statement can be expressed in equation form as follows. The forces act between the two objects for a given amount of time. In some cases, the time is long; in other cases the time is short. Regardless of how long the time is, it can be said that the time that the force acts upon object 1 is equal to the time that the force acts upon object 2. This is merely logical. Forces result from interactions (or contact) between two objects. If object 1 contacts object 2 for 0.050 seconds, then object 2 must be contacting object 1 for the same amount of time (0.050 seconds). As an equation, this can be stated asSince the forces between the two objects are equal in magnitude and opposite in direction, and since the times for which these forces act are equal in magnitude, it follows that the impulses experienced by the two objects are also equal in magnitude and opposite in direction. As an equation, this can be stated as"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                              "lib/Assets/images/graph simple pendulum.gif"),
                          Text(
                            "Graph trace for finding Periodic length",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      elevation:
                          MaterialStateProperty.all(0), // Set elevation to 0
                    ),
                    onPressed: _launchURL,
                    child: Text(
                      'Research Paper and Data',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

Future<void> _launchURL() async {
  const url =
      "https://www.grc.nasa.gov/www/k-12/airplane/conmo.html#:~:text=The%20conservation%20of%20momentum%20states,by%20Newton's%20laws%20of%20motion.";
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
}
