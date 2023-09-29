import 'package:flutter/material.dart';

import 'box_return.dart';
class RowOne extends StatefulWidget {
  const RowOne({super.key});

  @override
  State<RowOne> createState() => _RowOneState();
}

class _RowOneState extends State<RowOne> {
  @override
  Widget build(BuildContext context) {
    return const Row(
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
            SizedBox(height: 10,),
            Row(
              children: [

                BoxReturnExperiment(),
              ],
            )
          ],
        ),


      ],
    );
  }
}



