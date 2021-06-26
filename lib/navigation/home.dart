import 'package:flutter/material.dart';
import 'alumno.dart';
import 'aspirante.dart';
import 'docentes/docentes.dart';
import 'concemas.dart';

import 'bienvenida.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF70232D),
      ),
      routes: <String, WidgetBuilder>{
        "/bienvenida": (BuildContext context) => Bienvenida(),
        "/Aspirante": (BuildContext context) => Aspirante(),
        "/Alumno": (BuildContext context) => Alumno(),
        "/Docente": (BuildContext context) => Docente(),
        "/conocemas": (BuildContext context) => Conocemas(),
      },
      home: MyHomePage(title: 'Bienvenido a la APP Del tese'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> _paginas = [
    Bienvenida(),
    Alumno(),
    Aspirante(),
    Docente(),
    Conocemas(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _paginas[selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 90,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.house,
            label: 'Inicio',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Alumno',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.emoji_people_outlined,
            label: 'Aspirantes',
            selectedBackgroundColor: Colors.purple,
          ),
          FFNavigationBarItem(
            iconData: Icons.account_circle_outlined,
            label: 'Docente',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Conoce MAs',
            selectedBackgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
