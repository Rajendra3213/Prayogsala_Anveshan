import 'package:flutter/material.dart';
class loadingScreen extends StatelessWidget {
  const loadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/Assets/images/Chemistry Lab Chemical Logo 1.png",
              width: 238.4662628173828,
              height: 230,
            ),
            Text(
                "Embrace New Learning",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
            )

          ],
        ),
      ),
    );
  }
}
