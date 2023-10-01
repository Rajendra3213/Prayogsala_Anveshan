import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('User Profile'), backgroundColor: Color(0xfffb9e13)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xfffb9e13),
                radius: 50,
                backgroundImage: AssetImage("lib\Assets\images\pendulum.jpeg"),
              ),
              SizedBox(height: 16),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Profile Progress: 75%',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              LinearProgressIndicator(
                value:
                    0.75, // Replace with the actual progress value (0.0 to 1.0)
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xfffb9e13)),
              ),
              SizedBox(height: 32),
              Text(
                'Progress Options:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.check_circle,color: Colors.white,),
                title: Text(
                  'Simple Pendulum completed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.check_circle,color: Colors.white,),
                title: Text('Conservation of Momentum On Progress',
                    style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.check_circle,color: Colors.white,),
                title: Text(
                  "Hook's law",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Add more progress options here
            ],
          ),
        ),
      ),
    );
  }
}
