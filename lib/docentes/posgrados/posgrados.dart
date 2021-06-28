import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tese_app/connection/Data.dart';
import 'package:tese_app/connection/Words.dart';


class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;

  DetailsPage({this.heroTag, this.foodName});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  final fb = FirebaseDatabase.instance.reference().child("Docentes").child("Cursos");
  List<Data> list = List();

  @override
  void initState() {
    super.initState();
    fb.once().then((DataSnapshot snap) {
      var data = snap.value;
      list.clear();
      data.forEach((key,value){
        Data data = new Data(
          value[Words().DESCRIPTION],
          value[Words().DATE],
          value[Words().IAMGE],
          value[Words().SUBTITLE],
          value[Words().TITLE],
        );
        list.add(data);
      });

      setState(() {

      });

    });
  }


  @override
  Widget build(BuildContext context) {

    Widget UI(String descripcion,String fecha, String imagen, String subtitulo, String titulo ){
      return new GestureDetector(
        onLongPress: (){

        },
        onTap: (){

        },
        child: Card(
          child: Column(
            children: <Widget>[

              Text(titulo, style: TextStyle(
                color: Colors.black,
                  fontSize: 18,
                fontWeight: FontWeight.bold,

              ),),

              Text(subtitulo, style: TextStyle(
                color: Colors.black45,
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),),

              Image(
                image: NetworkImage(
                  imagen
                ),),

              Row(
                children: [
                  Text(descripcion, style: TextStyle(
                    color: Colors.black45,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),),

                  Text(fecha, style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),),
                ],
              )

            ],
          ),
        ),
      );
    }


    return Scaffold(
      body: Container(
        child: list.length == 0 ? Text("Data is null"): new ListView.builder(
          itemCount: list.length,
          itemBuilder: (_,index){
            return UI(list[index].Descripcion, list[index].fecha, list[index].imagen, list[index].subtitulo, list[index].titulo);
          }
        ),
      ),
    );
  }
}
