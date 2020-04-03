import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Welcome Friend!'

        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(

        child: RaisedButton(

          onPressed: () {

            Navigator.pop(context);
          },
          child: Text('Go Back')
        )
      ),
    );
  }
}