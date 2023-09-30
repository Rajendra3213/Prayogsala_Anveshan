import 'package:flutter/material.dart';
class OnClick extends StatefulWidget {
  const OnClick({super.key});

  @override
  State<OnClick> createState() => _OnClickState();
}

class _OnClickState extends State<OnClick> {
  bool isHover =false;
  bool isHover1=false;
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
               // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Physics",style:TextStyle(
                    color: Colors.white,
                    fontSize:22,
                    fontWeight:FontWeight.w900,
                  ) ,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.only(top: (isHover1) ? 25 : 30.0, bottom:!(isHover1)? 25:30),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/fourth');
                          },
                          child: Container(
                            height: 150,
                            width:160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("lib/Assets/images/pendulum.jpeg"),
                                  fit: BoxFit. cover
                                  ,
                                ),
                                color: Colors.black,
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
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple.withOpacity(0.8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Conservation of Momentum",textAlign: TextAlign.center
                                        ,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ),
                      SizedBox(width: 35),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.only(top: (isHover) ? 25 : 30.0, bottom:!(isHover)? 25:30),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/fourth');
                          },
                          child: Container(
                            height: 150,
                            width:160,
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

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.only(top: (isHover1) ? 25 : 30.0, bottom:!(isHover1)? 25:30),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Container(
                            height: 150,
                            width:160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("lib/Assets/images/pendulum.jpeg"),
                                  fit: BoxFit. cover
                                  ,
                                ),
                                color: Colors.black,
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
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple.withOpacity(0.8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Conservation of Momentum",textAlign: TextAlign.center
                                        ,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ),
                      SizedBox(width: 35),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.only(top: (isHover) ? 25 : 30.0, bottom:!(isHover)? 25:30),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/third');
                          },
                          child: Container(
                            height: 150,
                            width:160,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
