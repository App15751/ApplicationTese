import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Login.dart';

class Alumno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ALUMNO',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes: <String, WidgetBuilder>{
          "/xook": (BuildContext context) => Xook(),
          "/reinscripciones": (BuildContext context) => Reincripciones(),
          "/cursos": (BuildContext context) => Curso(),
          "/becas": (BuildContext context) => Becas(),
          "/maestrias": (BuildContext context) => Maestrias(),
          "/calificaciones": (BuildContext context) => Login(),
          "/passwordRestore": (BuildContext context) => Login(),
          "/horario": (BuildContext context) => Login(),
        },
        home: Inicio());
  }
}

class Xook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 100, bottom: 10, right: 5, left: 5),
      decoration: BoxDecoration(
          color: Colors.white70,
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.redem.org/wp-content/uploads/2016/04/profesor-universitario.jpg"),
              alignment: Alignment.topCenter)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      highlightColor: Colors.red.shade300,
                      onPressed: () {
                        Navigator.pushNamed(context, "/calificaciones");
                        setCadena("calificacion");
                        getCadena().then((value) => print(value));
                      },
                      child: SizedBox(
                          width: 120,
                          height: 120,
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                    width: 90.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/calificaciones.png?alt=media&token=0ad5bd9a-19ac-4456-8d18-a01ce418db5b"),
                                            alignment: Alignment.topCenter))),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'CALIFICACIONES',
                                    style: TextStyle(fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ))),
                ),



                //HACIA ABAJO
              ]),

              // DE LADO DERECHO
              Column(
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        highlightColor: Colors.red.shade300,
                        onPressed: () {
                          Navigator.pushNamed(context, "/horario");
                          setCadena("horario");
                        },
                        child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, top: 5),
                                    child: Container(
                                        width: 70.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/horario.png?alt=media&token=dadf1a5e-46db-475c-9807-c3236191c1b1"),
                                                alignment: Alignment.topCenter))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Text(
                                      'HORARIO',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                  ),


                ],
              )
            ],
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
                color: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                highlightColor: Colors.red.shade300,
                onPressed: () {
                  Navigator.pushNamed(context, "/passwordRestore");
                  setCadena("restore");
                },
                child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                                width: 75.0,
                                height: 75.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/restore.png?alt=media&token=c7a37ecd-acf5-42c5-bddb-e81e8bb78ffa"),
                                        alignment: Alignment.topCenter))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Text(
                              'RESTABLECER CONTRASEÑA',
                              style: TextStyle(fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ))),
          ),

        ],
      ),
    ));
  }
}

getCadena() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('dataXook') ?? "";
}

setCadena(String _cadena) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('dataXook', _cadena);
}

class Reincripciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("SECCION DE REINSCRIPCIONES"),
      ),
    );
  }
}

class Curso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("IDIOMAS"),
      ),
    );
  }
}

class Becas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("SECCION DE BECAS"),
      ),
    );
  }
}

class Maestrias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("MAESTRIAS"),
      ),
    );
  }
}

//Clase principal
class Inicio extends StatelessWidget {

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffe5122f), Color(0xffdc1313)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 9, right: 0, left: 0),
          decoration: BoxDecoration(
              color: Color(0xFF70232D),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i2.wp.com/edomexinforma.com.mx/media/2016/01/TESE-31.jpg?fit=1200%2C726"),
                  alignment: Alignment.topCenter)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Text('Bienvenidos', style: TextStyle(
                      fontSize: 50,
                      foreground: Paint()
                        ..shader = linearGradient
                        ..color = Color(0xFF000000),
                    ),),

                    Text('Alumnos', style: TextStyle(
                      fontSize: 50,
                      foreground: Paint()
                        ..shader = linearGradient
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2.5
                        ..color = Color(0xFF000000),
                    ),),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              highlightColor: Colors.red.shade300,
                              onPressed: () {
                                Navigator.pushNamed(context, "/xook");
                                print(getCadena());
                              },
                              child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Container(
                                            width: 90.0,
                                            height: 90.0,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/xook.png?alt=media&token=53d69365-3f80-4a27-a9bb-cf32153a2481"),
                                                    alignment:
                                                        Alignment.topCenter))),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'XOOK',
                                            style: TextStyle(fontSize: 13),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              highlightColor: Colors.red.shade300,
                              onPressed: () {
                                Navigator.pushNamed(context, "/reinscripciones");
                              },
                              child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/reinscripciones.png?alt=media&token=7c9acfed-44de-4fa1-adcb-58036b653caa"),
                                                      alignment:
                                                          Alignment.topCenter))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(9.0),
                                          child: Text(
                                            'REINSCRIPCIONES',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))),
                        ),

                        //HACIA ABAJO
                      ]),

                      // DE LADO DERECHO
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: RaisedButton(
                                color: Colors.white,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                highlightColor: Colors.red.shade300,
                                onPressed: () {
                                  Navigator.pushNamed(context, "/becas");
                                },
                                child: SizedBox(
                                    width: 120,
                                    height: 120,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Container(
                                                width: 73.0,
                                                height: 73.0,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/becas.png?alt=media&token=ec7df363-e136-45f7-a224-5b38fe15cb38"),
                                                        alignment:
                                                            Alignment.topCenter))),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              'BECAS',
                                              style: TextStyle(fontSize: 12),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: RaisedButton(
                                color: Colors.white,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                highlightColor: Colors.red.shade300,
                                onPressed: () {
                                  Navigator.pushNamed(context, "/maestrias");
                                },
                                child: SizedBox(
                                    width: 120,
                                    height: 120,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/maestrias.png?alt=media&token=1ab098d3-ed46-42dc-8439-d2982de87b33"),
                                                        alignment:
                                                            Alignment.topCenter))),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text(
                                              'MAESTRIAS',
                                              style: TextStyle(fontSize: 12),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        highlightColor: Colors.red.shade300,
                        onPressed: () {
                          Navigator.pushNamed(context, "/cursos");
                        },
                        child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                        width: 85.0,
                                        height: 85.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://firebasestorage.googleapis.com/v0/b/app-tese.appspot.com/o/cursos.png?alt=media&token=8bb130b7-7cfe-4f7b-8d66-960a61e8e198"),
                                                alignment: Alignment.topCenter))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Text(
                                      'CURSOS',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
