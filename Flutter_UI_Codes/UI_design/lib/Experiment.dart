import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hackfest/Expandable.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset("lib/Assets/images/pendulum.gif",width: 200),
                            SizedBox(height:5,),
                            Text(
                                "Fig:Geometrical Visualization",style: TextStyle(
                              color: Colors.white,

                            ),
                            )
                          ],
                        ),
                        Column(
                          children: [


                          ],
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    ExpandableText(text:"The Logic Behind Momentum Conservation ΩConsider a collision between two objects - object 1 and object 2. For such a collision, the forces acting between the two objects are equal in magnitude and opposite in direction (Newton's third law). This statement can be expressed in equation form as follows. The forces act between the two objects for a given amount of time. In some cases, the time is long; in other cases the time is short. Regardless of how long the time is, it can be said that the time that the force acts upon object 1 is equal to the time that the force acts upon object 2. This is merely logical. Forces result from interactions (or contact) between two objects. If object 1 contacts object 2 for 0.050 seconds, then object 2 must be contacting object 1 for the same amount of time (0.050 seconds). As an equation, this can be stated asSince the forces between the two objects are equal in magnitude and opposite in direction, and since the times for which these forces act are equal in magnitude, it follows that the impulses experienced by the two objects are also equal in magnitude and opposite in direction. As an equation, this can be stated as")

                  ],
                ),
              )
            ],
          ),
        ),
        ));
  }
}
