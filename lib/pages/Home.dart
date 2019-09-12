import 'package:flutter/material.dart';
import 'package:printalo/pages/Ingresar.dart';
import 'package:printalo/pages/Registrar.dart';
import '../widgets/BtnGWB.dart';
import '../widgets/Txt.dart';
import '../widgets/logo.dart';
import '../main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Colors.black,
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.65), BlendMode.dstATop),
                image: AssetImage('assets/background/principal.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Logo(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextPersonzalized(
                            "Una nueva forma de darte un servicio", 20, 250),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      BtnGWB('Ingresar',() => Navigator.of(context).push(PageRouteBuilder(
                        opaque: false,
                        pageBuilder:(BuildContext
                        context,animation,secondaryAnimation)=>Ingresar()))
                      ,0.65),
                      BtnGWB('Registrarse',
                          () =>  Navigator.of(context).push(PageRouteBuilder(
                        opaque: false,
                        pageBuilder:(BuildContext
                        context,animation,secondaryAnimation)=>Registrar()))
                      ,0.65),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
