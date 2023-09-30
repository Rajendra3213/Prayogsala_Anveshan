import 'package:flutter/material.dart';

class BoxReturnExperiment extends StatefulWidget {
  String url;
  String text;
  Color color;
  BoxReturnExperiment({Key? key, required this.url, required this.text,required this.color}) : super(key: key);

  @override
  State<BoxReturnExperiment> createState() => _BoxReturnExperimentState();
}

class _BoxReturnExperimentState extends State<BoxReturnExperiment> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.only(top: (isHover) ? 25 : 30.0, bottom:!(isHover)? 25:30),
      child: InkWell(
        onTap: () {
          // Handle the click here.
        },
        child: Container(
          height: 150,
          width:150,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("${widget.url}"),
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
              child: Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: widget.color
                  )
              ),
            ),
          ),
          padding: EdgeInsets.all(5),
        ),
      ),

    );
  }
}
