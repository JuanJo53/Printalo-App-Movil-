import 'package:flutter/material.dart';

class Busqueda extends StatefulWidget {
  @override
  _BusquedaState createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puestos"),
        backgroundColor: Color(0xFF06575B),
      ),
    );
  }

}