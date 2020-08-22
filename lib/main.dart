

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
          child: Text(
            '¿Que hacer?', 
            style:TextStyle(
              fontSize: 25.0,
              color: Colors.black
            )
          ),
        )
             
      ),
      body: Column(
        children: [
          
          //sacner 
          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 10.0 , right: 10.0 ,),
            child: Container(  
              clipBehavior: Clip.antiAlias,
              width: 400.0,
              child: Image.asset(
                'assets/esc.jpeg',
                fit: BoxFit.cover,
                alignment: Alignment.center
              ),
              height: 150.0,
              decoration: BoxDecoration(             
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                   
                ),
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20.0)
              ),
              
            ),
          ),

          //consultar horario 
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 10.0 , right: 10.0 ,),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 400.0,
              child: Image.asset(
                'assets/agr.jpeg',
                fit: BoxFit.cover,
              ),
              height: 150.0,
              decoration: BoxDecoration(          
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
          ),

          //escaneo reciente
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 10.0 , right: 10.0 ,),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 400.0,
              child: Container(
                child: Image.asset(
                  'assets/cons.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              height: 150.0,
              decoration:BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
          )
        ],
      ),
    );
  }
}
