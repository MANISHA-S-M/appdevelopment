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
               Expanded(
                   child:Container(
                      color: Colors.orange,
          ),
        ),
     Expanded(
     flex: 1,
       child: Container(
    color: Colors.green,
         child: ListView.builder(itemBuilder: (context,index)=>Padding(
           padding: const EdgeInsets.all(8.0),
           child: SizedBox(
             width: 100,
             child: CircleAvatar(
               backgroundColor: Colors.black,
             ),
           ),
         ),itemCount: 10,scrollDirection: Axis.horizontal),

    ),
   ),
    Expanded(
      flex: 2,
      child: Container(
    color: Colors.blue,
    child: ListView.builder(itemBuilder: (context,index)=>Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
      leading:  CircleAvatar(
      backgroundColor: Colors.black,
      ),
       title:Text('name'),
        subtitle: Text('mob no'),

      ),
    ),
    ),
      ),
    ),
      ]
    ),
    ),
    );
    }
}