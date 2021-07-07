import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tese_app/connection/Data.dart';
import 'package:tese_app/connection/ImagesData.dart';
import 'package:tese_app/connection/Words.dart';

import 'Details.dart';

class Bienvenida extends StatefulWidget {
  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  final fb = FirebaseDatabase.instance.reference();
  List<Data> list = List();
  List<ImagesData> listImages = List();

  @override
  void initState() {
    super.initState();
    ConexionImages("Inicio", "Tese");
    ConexionNovedad("Inicio", "Novedades");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(alignment: const Alignment(0, 0), children: <Widget>[
          SizedBox(
              height: 150.0,
              width: 360.0,
              child: CarouselSlider.builder(
                  itemCount: listImages.length,
                  itemBuilder: (_, x, index) {
                    return Container(
                        child: Image(
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      image: NetworkImage(listImages[x].imagen),
                    ));
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    aspectRatio: 0.7,
                    enableInfiniteScroll: true,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    initialPage: 1,
                  ))),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Inicio',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ]),
        Divider(
          height: 25,
        ),
        SizedBox(
            height: 400.0,
            width: 200.0,
            child: list.length == 0
                ? Text("Cargando...")
                : new ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      return UI(
                          list[index].Descripcion,
                          list[index].fecha,
                          list[index].imagen,
                          list[index].subtitulo,
                          list[index].titulo);
                    }))
      ]),
    );
  }

  Widget UI(String descripcion, String fecha, String imagen, String subtitulo,
      String titulo) {
    return GestureDetector(
      onTap: () {},
      child: new Card(
          margin:
              EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 20.0),
          elevation: 15,
          child: new Column(
            children: <Widget>[
              new ListTile(
                leading: new Image.network(
                  imagen,
                  fit: BoxFit.cover,
                  width: 100.0,
                ),
                title: new Text(
                  titulo,
                  style: new TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                subtitle: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(subtitulo,
                          style: new TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.normal)),
                    ]),
                //trailing: ,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Details(Data(
                          descripcion, fecha, imagen, subtitulo, titulo))));
                },
              )
            ],
          )),
    );
  }

  void ConexionNovedad(String NodoPrincipal, String NodoSecundario) {
    fb
        .child(NodoPrincipal)
        .child(NodoSecundario)
        .once()
        .then((DataSnapshot snap) {
      var data = snap.value;
      list.clear();
      data.forEach((key, value) {
        Data data = new Data(
          value[Words().DESCRIPTION],
          value[Words().DATE],
          value[Words().IAMGE],
          value[Words().SUBTITLE],
          value[Words().TITLE],
        );
        list.add(data);
      });
      setState(() {});
    });
  }

  void ConexionImages(String NodoPrincipal, String NodoSecundario) {
    fb
        .child(NodoPrincipal)
        .child(NodoSecundario)
        .once()
        .then((DataSnapshot snap) {
      var data = snap.value;
      listImages.clear();
      data.forEach((key, value) {
        ImagesData data = new ImagesData(
          value[Words().IMAGEN],
          value[Words().TITULO],
        );
        listImages.add(data);
      });
      setState(() {});
    });
  }
}
