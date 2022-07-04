import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_4/screens/login/login_screen.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({Key? key, required this.myNumber}) : super(key: key);

  final int myNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting screen"),
        //automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return LoginScreen();
                      }));
                },
                child: Text(
                  "Login Screen $myNumber",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
