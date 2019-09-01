import 'package:flutter/material.dart';

class BtnGWB extends StatelessWidget {
  String text;
  Function funcion;
  double widthSize;
  BtnGWB(this.text,this.funcion,this.widthSize);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funcion,
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        width: MediaQuery.of(context).size.width * widthSize,
        height: 45,
        decoration: new BoxDecoration(
            color: Color(0xFF06575B),//background color green
            border: new Border.all(color: Colors.white, width: 1.0),
            borderRadius: new BorderRadius.circular(10.0)),
        child: new Center(
          child: new Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
