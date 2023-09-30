import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SmallText extends StatelessWidget {
  final String text;
  double size;
  double height;
  // TextOverflow overflow;
  SmallText({Key? key, required this.text,
    // this.overflow = TextOverflow.ellipsis,
    this.size = 14,
    this.height = 1.2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow:overflow,
      style: TextStyle(
        color:Colors.white,
        fontSize: size,
        height: height,
        fontWeight:FontWeight.w600 ,
      ),
    );
  }
}
