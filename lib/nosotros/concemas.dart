import 'package:flutter/material.dart';

class Conocemas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'A CERCA DE',
        theme: ThemeData(
          primaryColor: Color(0xFF70232D),
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/TESE": (BuildContext context) => TESE(),
          "/carreras": (BuildContext context) => Carreras(),
          "/posgrados": (BuildContext context) => Posgrados(),
          "/mision": (BuildContext context) => Mision(),
          "/vision": (BuildContext context) => Vision(),
        },
        home: Inicio());
  }
}

class TESE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Reseña Historica"),
      ),
      body: Center(
        child: Text(
            "El Tecnológico de Estudios Superiores de Ecatepec se creó en 1990 por Decreto de la Legislatura del Estado, como Organismo Descentralizado del Estado de México con personalidad jurídica y patrimonio propio, Opera mediante el financiamiento de los Gobiernos Federal y Estatal, así como por la generación de ingresos propios es el primer Tecnológico creado con carácter Descentralizado en el país, actualmente oferta 11 programas educativos de nivel licenciatura, dos son de reciente creación, el programa de Ingeniería en Gestión Empresarial y el de Ingeniería Aeronáutica, todos los demás están reconocidos por su calidad por COPAES, además oferta 6 programas de Maestría, tres en la categoría de investigación y tres con orientación profesional, el programa de Maestría en ciencias en Ingeniería Bioquímica está reconocido por el CONACyT por su calidad, pertenece al PNPC. Actualmente se atiende una matrícula de 6, 764 estudiantes de licenciatura y posgrado, la cual es atendida por 351 docentes, 147 de tiempo completo, de los cuales 28 se reconocen como perfil deseable y 10 tienen reconocimiento CONACYT por pertenecer al S.N.I."),
      ),
    );
  }
}

class Carreras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Carreras"),
      ),
      body: Center(
        child: Text(
            "Ingeniería Química, Ingeniería Bioquímica, Ingeniería Electrónica, Ingeniería Industrial, Ingeniería Mecánica, Ingeniería Mecatrónica, Ingeniería Sistemas Computacionales. Ingeniería en Informática, Ingeniería en Gestión Empresarial, Licenciatura en Contaduría, Licenciatura en Informática, Contador Público, Ingeniería Aeronáutica"),
      ),
    );
  }
}

class Posgrados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Posgrados"),
      ),
      body: Center(
        child: Text(
            "Maestría en Ciencias en Ingeniería Química, Maestría en Ciencias en Ingeniería Bioquímica, Maestría en Ciencias en Ingeniería Mecatrónica, Maestría en Ingeniería en Sistemas Computacionales, Maestría en Gestión Administrativa, Maestría en Eficiencia Energética y Energías Renovables"),
      ),
    );
  }
}

class Mision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Mision"),
      ),
      body: Center(
        child: Text(
            "Ofrecer educación superior integral de calidad por competencias, que permita formar profesionistas líderes, creativos y competitivos en una realidad global, con capacidades para identificar y resolver problemas, comprometidos con el desarrollo tecnológico, económico, cultural y social del País, Estado y entrono local"),
      ),
    );
  }
}

class Vision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Vision"),
      ),
      body: Center(
        child: Text(
            "Ser la Institución de Educación Superior Tecnológica del Estado de México y del país con reconocimiento nacional e internacional en la generación y aplicación del conocimiento, por la excelencia de la formación y los servicios que otorga, para la generación de soluciones innovadoras que aporten a las prioridades locales, estatales y nacionales en un ambiente sostenible, de inclusión, equidad y transparencia."),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Conoce Mas...."),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 120, bottom: 10, right: 5, left: 5),
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://2.bp.blogspot.com/-lsgA7ExDuw0/VZei65HtwpI/AAAAAAABDCY/tosAdLlOPQo/s1600/NI8MCGIJJD2045.jpg"),
                  alignment: Alignment.topCenter)),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/TESE");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'TESE',
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: RaisedButton(
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () {
                                Navigator.pushNamed(context, "/carreras");
                              },
                              child: SizedBox(
                                  width: 200,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'CARRERAS',
                                      textAlign: TextAlign.center,
                                    ),
                                  ))),
                        ))
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/posgrados");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'POSGRADOS',
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
                            Navigator.pushNamed(context, "/mision");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'MISION',
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
                            Navigator.pushNamed(context, "/vision");
                          },
                          child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                                  'VISION',
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
