import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tese_app/connection/Data.dart';
import 'package:tese_app/connection/Words.dart';
import 'package:tese_app/inicio/Details.dart';

class Novedades extends StatefulWidget {
  Novedades({Key key}) : super(key: key);

  @override
  _NovedadesState createState() {
    return _NovedadesState();
  }
}

class _NovedadesState extends State<Novedades> {
  final fb = FirebaseDatabase.instance.reference();
  List<Data> list = List();
  @override
  void initState() {
    super.initState();
    ConexionNovedad("alumnos", "Noticias");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
    SizedBox(
    height: 400.0,
    width: 200.0,
    child: list.length == 0
    ? Text("Data is null")
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
    ]);
  }

  Widget UI(String descripcion, String fecha, String imagen, String subtitulo,
      String titulo) {
    return GestureDetector(
      onTap: (){

      },
      child: new Card(
          margin: EdgeInsets.only(left:20.0, top:10.0,right:20.0,bottom:20.0) ,
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
                  style:
                  new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
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
                      builder: (context) => Details(Data(descripcion,fecha,imagen,subtitulo,titulo))));
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


}