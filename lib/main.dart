import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text('¿Que hacer?',
                style: TextStyle(fontSize: 25.0, color: Colors.black)),
          )),
      body: Column(
        children: [
          //sacner
          tarjetasInfo('assets/esc.jpeg', 'Escanear'),
          //consultar horario
          tarjetasInfo('assets/agr.jpeg', 'Consultar Horario'),
          //escaneo reciente
          tarjetasInfo('assets/cons.jpeg', 'Escaneo Reciente')
        ],
      ),
    );
  }

  Widget tarjetasInfo(String asset, String texto) {
    return Container(
      width: 500.0,
      height: 150.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          image: DecorationImage(
              image: ExactAssetImage(asset), fit: BoxFit.cover)),
      child: FlatButton(
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '      $texto',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
