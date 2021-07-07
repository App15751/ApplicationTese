import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tese_app/apirantes/Inscripciones/inscripciones.dart';

import 'Carreras/carreras.dart';
import 'Deportes/deportes.dart';
import 'Instalaciones/instalaciones.dart';
import 'Propedeutico/propedeutico.dart';

class Aspirante extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Aspirante> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFB4B4B4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0, 0),
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  width: 360.0,
                  child: Carrusel(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: Text(
                    'Aspirantes',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 13),
              child: Text(
                'Selecciona alguna de las siguientes opciones',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                _buildFoodItem1(
                    'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/docente.jpg?alt=media&token=788cc245-b71a-4c7f-8112-c23689ca7e7f',
                    'Carreras',
                    'Conocer Más'),
                _buildFoodItem2(
                    'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/deportes.jpg?alt=media&token=7fb5c55d-a72d-480f-bc96-0e6d4221ab50',
                    'Deportes',
                    'Conocer Más'),
                _buildFoodItem3(
                    'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/inscripcion.png?alt=media&token=d922bc20-df05-481d-ac19-37a4bb985423',
                    'Inscripciones',
                    'Conocer Más'),
                _buildFoodItem4(
                    'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/instalaciones.png?alt=media&token=71118b56-c41c-445a-8d02-9855ab54b331',
                    'Instalaciones',
                    'Conocer Más'),
                _buildFoodItem5(
                    'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/cursos.png?alt=media&token=8bb130b7-7cfe-4f7b-8d66-960a61e8e198',
                    'Propedeutico',
                    'Conocer Más')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget Carrusel() {
    return Carousel(
      images: [
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/tese%2Ftesepics_66213008_693710521068835_15641523461543570_n.jpg?alt=media&token=4c6dcbe2-eebe-487c-a846-1827c4487007'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/tese%2Finsta_tese_184174217_4054093154646745_1223029304452633103_n.jpg?alt=media&token=64e605fe-7832-4573-b53f-72138ca99661'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/tese%2Ftesepics_67838339_227113614923742_7866409185035403038_n.jpg?alt=media&token=14346851-e87d-49a3-be19-3b089a2205da'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/tese%2Ftesepics_80817404_512683962939827_8499907459152892619_n.jpg?alt=media&token=929c2245-63d3-4e06-9483-9e5901f446bb'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/tese%2Finsta_tese_96902452_538795173473664_8729865513200343702_n%20(1).jpg?alt=media&token=1dc28c8d-d595-4ceb-995b-401d8219974d'),
      ],
      showIndicator: false,
      borderRadius: false,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      overlayShadow: true,
      overlayShadowColors: Colors.white,
      overlayShadowSize: 0.7,
    );
  }

  Widget _buildFoodItem1(String imgPath, String raceName, String price) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Carreras(heroTag: imgPath, raceName: raceName)));
            },
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                              tag: imgPath,
                              child: Image(
                                  image: NetworkImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 60.0,
                                  width: 60.0)),
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 70,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(raceName,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold)),
                              Text(price,
                                  overflow: TextOverflow.fade,
                                  maxLines: 10,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      color: Colors.black))
                            ])
                      ])),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget _buildFoodItem2(String imgPath, String raceName, String price) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Deportes(heroTag: imgPath, raceName: raceName)));
            },
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                              tag: imgPath,
                              child: Image(
                                  image: NetworkImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 60.0,
                                  width: 60.0)),
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 70,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(raceName,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold)),
                              Text(price,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      color: Colors.black))
                            ])
                      ])),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget _buildFoodItem3(String imgPath, String raceName, String price) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Inscripciones(heroTag: imgPath, raceName: raceName)));
            },
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                              tag: imgPath,
                              child: Image(
                                  image: NetworkImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 60.0,
                                  width: 60.0)),
                        ),
                        SizedBox(
                          width: 10,
                          height: 70,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(raceName,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold)),
                              Text(price,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      color: Colors.black))
                            ])
                      ])),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget _buildFoodItem4(String imgPath, String raceName, String price) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Instalaciones(heroTag: imgPath, raceName: raceName)));
            },
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Hero(
                                  tag: imgPath,
                                  child: Image(
                                      image: NetworkImage(imgPath),
                                      fit: BoxFit.cover,
                                      height: 60.0,
                                      width: 60.0)),
                            ),
                            SizedBox(
                              width: 10,
                              height: 70,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(raceName,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold)),
                                  Text(price,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15.0,
                                          color: Colors.black))
                                ])
                          ])),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget _buildFoodItem5(String imgPath, String raceName, String price) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Propedeutico(heroTag: imgPath, raceName: raceName)));
            },
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Hero(
                                  tag: imgPath,
                                  child: Image(
                                      image: NetworkImage(imgPath),
                                      fit: BoxFit.cover,
                                      height: 60.0,
                                      width: 60.0)),
                            ),
                            SizedBox(
                              width: 10,
                              height: 70,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(raceName,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold)),
                                  Text(price,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15.0,
                                          color: Colors.black))
                                ])
                          ])),
                    ],
                  ),
                ),
              ],
            )));
  }

}
