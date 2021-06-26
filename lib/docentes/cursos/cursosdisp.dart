import 'package:flutter/material.dart';

class Cursosdisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("CURSOS DISPONIBLES"),
      ),
      body: Center(
        child: Text("Información sobre los cursos para Docentes"),
      ),
    );
  }
}
