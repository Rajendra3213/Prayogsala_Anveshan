import 'package:flutter/material.dart';

class BoxReturnExperiment extends StatefulWidget {
  const BoxReturnExperiment({super.key});

  @override
  State<BoxReturnExperiment> createState() => _BoxReturnExperimentState();
}

class _BoxReturnExperimentState extends State<BoxReturnExperiment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width:150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/Assets/images/image 1.png"),
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
      ),
      child: Text(
          "Physics",style: TextStyle(
        color: Colors.white
      ),
      ),

    );
  }
}
