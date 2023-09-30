import 'package:flutter/material.dart';
class OnClick extends StatefulWidget {
  const OnClick({super.key});

  @override
  State<OnClick> createState() => _OnClickState();
}

class _OnClickState extends State<OnClick> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text("Physics",style:TextStyle(
                  color: Colors.white,
                  fontSize:22,
                  fontWeight:FontWeight.w900,
                ) ,)
              ],
            ),
          ),
        ),

      ),
    );
  }
}
