import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hackfest/Experiments_list.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Assets/images/image 1.png"),
                fit: BoxFit. cover
                ,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Expanded(
                            child: Center(
                              child: Column(
                                children: [
                                  Image.asset("lib/Assets/images/Chemistry Lab Chemical Logo 1.png",scale: 4,),
                                  AnimatedTextKit(
                                    // This list contains the text strings that you want to animate.
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "Welcome to Prayogshala Anveshan",
                                        textAlign: TextAlign.center,
                                        textStyle: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        speed: const Duration(milliseconds: 150),
                                      ),
                                      TypewriterAnimatedText(
                                        "Powered with AR",
                                        textStyle: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        speed: const Duration(milliseconds: 100),
                                      ),
                                    ],
                                    // Slow down the animation by half.
                                    repeatForever: true, // Loop the animation.
                                  ),
                                  SizedBox(height:10,),
                                  Container(
                                    width: 250,  // Set the desired width
                                    // color: Color(0xFF212629),  // Set the desired background color
                                    padding: EdgeInsets.all(8.0),  // Optional: Add padding for some space around the text
                                    child: Text(
                                      "Explore science with Virtual AR School Labs for an engaging, collaborative learning experience.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,  // Corrected typo: FontWeight.w400
                                        color: Colors.white, // Optional: Set the text color
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height:20,),
                      RowOne(),

                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
