import 'package:flutter/material.dart';

class TextPersonzalized extends StatelessWidget {
  String text;
  double size;
  double widthSize;
  TextPersonzalized(this.text, this.size,this.widthSize);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      padding: EdgeInsets.all(5),
      child: Text(
        text,textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: size),
        maxLines: 2,
      ),
    );
  }
}
