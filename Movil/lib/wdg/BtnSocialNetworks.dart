import 'package:flutter/material.dart';


class BtnSocialNetworks extends StatelessWidget {
  String text;
  Function funcion;
  double widthSize;
  IconData iconx;
  int color;
  double sizeicon;
  BtnSocialNetworks(this.text, this.funcion, this.widthSize, this.color,this.iconx,this.sizeicon);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funcion,
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        width: MediaQuery.of(context).size.width * widthSize,
        height: 45,
        decoration: new BoxDecoration(
          color: Color(color), //background color green
          border: new Border.all(color: Colors.white, width: 1.0),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Icon(iconx,color: Colors.white,size: sizeicon,),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
