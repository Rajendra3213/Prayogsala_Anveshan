import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'box_return.dart'; // Import the BoxReturnExperiment widget

class RowOne extends StatefulWidget {
  const RowOne({super.key});

  @override
  State<RowOne> createState() => _RowOneState();
}

class _RowOneState extends State<RowOne> {
  bool isHover = false;
  bool isHover1 =false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Experiment",style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),),
            //SizedBox(height: 10,),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.only(top: (isHover) ? 25 : 30.0, bottom:!(isHover)? 25:30),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Container(
                      height: 150,
                      width:150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/Assets/images/background.gif"),
                            fit: BoxFit. cover
                            ,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Physics"
                              ,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                  ),

                ),

                SizedBox(width:30),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.only(top: (isHover1) ? 25 : 30.0, bottom:!(isHover1)? 25:30),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Container(
                      height: 150,
                      width:150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/Assets/images/Chemistry.gif"),
                            fit: BoxFit. cover
                            ,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Chemistry"
                              ,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              )
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),


      ],
    );
  }
}
