import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Registrar.dart';
import 'pages/Ingresar.dart';
import 'pages/bbnav.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.white,
        hintColor: Colors.white,
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          )
        )
      ),
      home: BBNav(),
      routes: {
        "/Register":(BuildContext context) => Registrar(),
        "/Ingresar":(BuildContext context) => Ingresar(),
      },
    );
  }
}
