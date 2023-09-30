import 'package:flutter/material.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff212629),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 300,
                    child: Image.asset('lib/Assets/images/Chemistry Lab Chemical Logo 1.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Change border color here
                    ),
                    filled: true,
                    fillColor: Colors.grey[800], // Change background color here
                    labelText: 'Phone number, email or username',
                    labelStyle: TextStyle(color: Colors.white), // Change label color here
                    hintStyle: TextStyle(color: Colors.white70), // Change hint color here
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Change border color here
                    ),
                    filled: true,
                    fillColor: Colors.grey[800], // Change background color here
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white), // Change label color here
                    hintStyle: TextStyle(color: Colors.white70), // Change hint color here
                  ),
                ),
              ),

              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Change button background color here
                      ),
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context,'/first');
                      },
                    ),
                  ),
                ),
              ),

              // SizedBox(
              //   height: 50,
              // ),
              // Container(
              //   child: Center(
              //     child: Row(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 62),
              //           child: Text('Forgot your login details?'),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 1.0),
              //           child: InkWell(
              //             onTap: () {
              //               print('hello');
              //             },
              //             child: Text(
              //               'Get help logging in.',
              //               style: TextStyle(fontSize: 14, color: Colors.blue),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}



