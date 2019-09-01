import 'package:flutter/material.dart';
import 'Txt.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                width: 75,
                height: 75,
              ),
            ],
          ),
          Column(
            children: <Widget>[TextPersonzalized("Printalo", 30, 130)],
          )
        ],
      ),
    );
  }
}
