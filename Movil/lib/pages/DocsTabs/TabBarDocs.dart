import 'package:flutter/material.dart';
import 'docsPorEnviar.dart';
import 'docsListos.dart';
import 'docsEnviados.dart';

class TabaBarDocs extends StatefulWidget {
  @override
  _TabaBarDocsState createState() => _TabaBarDocsState();
}

class _TabaBarDocsState extends State<TabaBarDocs>
    with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Documentos"),
        backgroundColor: Color(0xFF06575B),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(
              text: "POR ENVIAR",
            ),
            Tab(
              text: "ENVIADOS",
            ),
            Tab(
              text: "LISTOS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          DocsPorEnviar(),
          DocsEnviados(),
          DocsListos(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Color(0xFF06575B),
      ),
    );
  }
}
