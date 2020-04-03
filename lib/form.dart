import 'package:flutter/material.dart';
import 'package:forms/logged_in.dart';

class FormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'YourForm',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: FormHome(), 
    );
  }
}

class FormHome extends StatefulWidget {
  @override
  _FormHomeState createState() => _FormHomeState();
}

class _FormHomeState extends State<FormHome> with SingleTickerProviderStateMixin {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context) {

return  Scaffold(
  backgroundColor: Colors.white,
  body:  Stack(fit: StackFit.expand, children: <Widget>[
     Image(
      image:  AssetImage("assets/hacklab.jpg"),
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.darken,
      color: Colors.black87,
    ),
     Theme(
      data:  ThemeData(
          brightness: Brightness.dark,
          inputDecorationTheme:  InputDecorationTheme(
            // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
            labelStyle:
                 TextStyle(color: Colors.tealAccent, fontSize: 25.0),
          )),
      isMaterialAppTheme: true,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           FlutterLogo(
            size: _iconAnimation.value * 140.0,
          ),
           Container(
            padding: const EdgeInsets.all(40.0),
            child:  Form(
              autovalidate: true,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   TextFormField(
                    decoration:  InputDecoration(
                        labelText: "Enter Email", fillColor: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  ),
                   TextFormField(
                    decoration:  InputDecoration(
                      labelText: "Enter Password",
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.text,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                  ),
                   MaterialButton(
                    height: 50.0,
                    minWidth: 150.0,
                    color: Colors.green,
                    splashColor: Colors.teal,
                    textColor: Colors.white,
                    child: new Icon(Icons.account_circle),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginHome()));
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  ]),
    );
  }
}