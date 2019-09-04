import 'package:flutter/material.dart';
import './DocsTabs/TabBarDocs.dart';
import './BusquedaTabs/busqueda.dart';
import './ConfTabs/TabBarConf.dart';
class BBNav extends StatefulWidget {
  @override
  _BBNavState createState() => _BBNavState();
}
class _BBNavState extends State<BBNav> {
  int _currentIndex=0;
  final List<Widget> _children = [
    TabaBarDocs(),
    Busqueda(),
    TabBarConf(),
  ];
    void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Color(0xFF06575B),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("Documentos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Busqueda"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Configuraciones"),
          ),
        ],
      ),
    );
  }
}
