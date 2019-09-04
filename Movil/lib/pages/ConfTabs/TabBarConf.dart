import 'package:flutter/material.dart';
import './ConfPedido.dart';
import './ConfUsuario.dart';

class TabBarConf extends StatefulWidget {
  @override
  _TabBarConfState createState() => _TabBarConfState();
}

class _TabBarConfState extends State<TabBarConf>
    with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuraciones"),
        backgroundColor: Color(0xFF06575B),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(
              text: "USUARIO",
            ),
            Tab(
              text: "PEDIDO",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          ConfUsuario(),
          ConfPedido(),
        ],
      ),
    );
  }
}
