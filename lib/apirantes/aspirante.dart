import 'package:flutter/material.dart';

class Aspirante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ASPIRANTE',
        theme: ThemeData(
          primaryColor: Color(0xFF70232D),
        ),
        routes: <String, WidgetBuilder>{
          "/normatividad": (BuildContext context) => Normatividad(),
          "/resenahistorica": (BuildContext context) => Resenahistorica(),
          "/asesoriayorientacion": (BuildContext context) => Asesoriayorientacion(),
          "/beneficios": (BuildContext context) => Beneficios(),
          "/becas": (BuildContext context) => Becas(),
        },
        home: Inicio());
  }
}

class Normatividad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("NORMATIVIDAD"),
      ),
      body: Center(
        child: Text("SECCION DE NORMATIVIDAD"),
      ),
    );
  }
}

class Resenahistorica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("RESEÑA HISTÓRICA"),
      ),
      body: Center(
        child: Text("SECCION DE RESEÑA HISTÓRICA"),
      ),
    );
  }
}

class Asesoriayorientacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("ASESORÍA Y ORIENTACIÓN"),
      ),
      body: Center(
        child: Text("SECCION DE ASESORÍA Y ORIENTACIÓN"),
      ),
    );
  }
}

class Beneficios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("BENEFICIOS"),
      ),
      body: Center(
        child: Text("SECCION DE BENEFICIOS"),
      ),
    );
  }
}

class Becas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("BECAS"),
      ),
      body: Center(
        child: Text("SECCION DE BECAS"),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Aspirante"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 120, bottom: 10, right: 5, left: 5),
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/n2-7E2W7IrKx8FoXgIjixKA_IL-vfYS-jA5XF5K32tM8O1b9RnMyTGdXFhPnCFfA5JxT9Tieo70KdL3zAeLpSy9B-TZMiBvm'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter)),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              Navigator.pushNamed(context, "/normatividad");
                            },
                            child: SizedBox(
                                width: 200,
                                height: 100,
                                child: Center(
                                  child: Text(
                                    'NORMATIVIDAD',
                                    textAlign: TextAlign.center,
                                  ),
                                ))),
                      ),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/resenahistorica");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'RESEÑA HISTORICA',
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, "/asesoriayorientacion");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'ASESORIA Y ORIENTACION',
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/becas");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'BECAS',
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/beneficios");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'BENEFICIOS',
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ])
                ],
              )
            ],
          ),
        ));
  }
}
