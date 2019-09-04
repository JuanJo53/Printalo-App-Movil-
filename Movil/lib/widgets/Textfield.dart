import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  String txtCabecera;
  Textfield(this.txtCabecera);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      //padding: EdgeInsets.all(7),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: txtCabecera,
          labelStyle: TextStyle(color: Colors.white),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            )
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.white),
          ),
        ),
      ),
    );
  }
}
