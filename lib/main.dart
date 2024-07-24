import 'package:flutter/material.dart';
import 'package:untitled/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primarySwatch:Colors.orange,
      ),
      home: _MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IntroPage'),
        ),
        body:Container(
          child: Column(
             children: [
               f
               Container(
    color: Colors.orange,

    ),
   Expanded(
     flex: 1,
       child: Container(
    color: Colors.green,

    ),
   ),
    Expanded(
      flex: 2,
      child: Container(
    color: Colors.blue,

    ),
    ),
    ],
    ),
    )
    );
    }
}