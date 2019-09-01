import 'package:flutter/material.dart';
import 'package:printalo/wdg/BtnGWB.dart';
import '../wdg/Txt.dart';
import '../wdg/IngTextdfields.dart';
import '../wdg/BtnSocialNetworks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';

class Ingresar extends StatefulWidget {
  @override
  _IngresarState createState() => _IngresarState();
}

class _IngresarState extends State<Ingresar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.45),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height*0.30,
              ),
              TextPersonzalized("Ingresar", 25, 150),
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF06575B),
                      border: new Border.all(color: Colors.white, width: 1.0),
                      borderRadius: new BorderRadius.circular(75.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.57,
                    child: Column(
                      children: <Widget>[
                        IngTextFields(),
                        BtnGWB("Ingresar", () {},0.60),
                        BtnSocialNetworks("Registrarse con Facebook", (){}, 0.60,0xFF3B5998,FontAwesomeIcons.facebookSquare,23),
                        BtnSocialNetworks("Registrarse con Google", (){}, 0.60,0xFFDB4437,FontAwesomeIcons.google,19),
                        TextPersonzalized("Ya tienes una cuenta?", 13, 200)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
