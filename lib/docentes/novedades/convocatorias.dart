import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("CALENDARIOS "),
      ),
      body: Center(
        child: Text("Información"),
      ),
    );
  }
}

class Avisos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("AVISOS"),
      ),
      body: Center(
        child: Text("Información"),
      ),
    );
  }
}

class Convocatorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("CONVOCATORIAS"),
      ),
      body: Center(
        child: Text("Información"),
      ),
    );
  }
}
