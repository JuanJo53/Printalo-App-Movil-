import 'package:flutter/material.dart';
import 'package:printalo/widgets/Textfield.dart';

class RegTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
      child: Column(
        children: <Widget>[
          Textfield("Nombre de usuario"),
          Textfield("Correo"),
          Textfield("Numero de Celular"),
          Textfield("Contraseña"),
        ],
      ),
    );
  }
}
