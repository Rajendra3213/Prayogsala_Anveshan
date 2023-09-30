import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackfest/smalltext.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firsthalf;
  late String secondhalf;
  bool hiddenText = true;
  double textHeight = 100;
  @override
  void initState(){
    super.initState();
    if(widget.text.length > textHeight){
      firsthalf = widget.text.substring(0,textHeight.toInt());
      secondhalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else{
      firsthalf = widget.text;
      secondhalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        child: secondhalf.isEmpty?SmallText(text: firsthalf,):Column(
          children: [
            SmallText(text: hiddenText?(firsthalf+"....."):(firsthalf+secondhalf),height: 1.8,),
            InkWell(
              onTap: (){
                setState(() {
                  hiddenText = !hiddenText;
                });
              },
              child: Row(
                children: [
                  SmallText(text: hiddenText?"show more": "show less",height: 1.8,),
                  Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.white,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
