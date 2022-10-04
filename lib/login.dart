import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9'),
              backgroundColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text("Shwe Htike"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                col
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
