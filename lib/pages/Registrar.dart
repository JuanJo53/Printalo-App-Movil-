import 'package:flutter/material.dart';
import 'package:printalo/widgets/BtnGWB.dart';
import '../widgets/Txt.dart';
import '../widgets/RegTextdfields.dart';
import '../widgets/BtnSocialNetworks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
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
                height: MediaQuery.of(context).size.height*0.12,
              ),
              TextPersonzalized("Registro", 25, 150),
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF06575B),
                      border: new Border.all(color: Colors.white, width: 1.0),
                      borderRadius: new BorderRadius.circular(75.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.76,
                    child: Column(
                      children: <Widget>[
                        RegTextFields(),
                        BtnGWB("Registrarse", () {},0.60),
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
