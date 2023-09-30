import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ExperimentPage extends StatefulWidget {
  const ExperimentPage({super.key});

  @override
  State<ExperimentPage> createState() => _ExperimentPageState();
}

class _ExperimentPageState extends State<ExperimentPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "lib/Assets/images/box1.png"
                  ),
                  fit: BoxFit.cover
                ),
                color: Colors.black54.withOpacity(0.6),
               border:BorderDirectional(
                 bottom:BorderSide.none
               ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Momentum",textAlign:TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      "Conservation",textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),),

                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFB9E13),
                    ),
                    child: Text("Enter VR lab"),
                  ),
                  SizedBox(height: 15,),
                  Text("Description",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),)
                ],
              ),
            )
          ],
        ),
        ));
  }
}
