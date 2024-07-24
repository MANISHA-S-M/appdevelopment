import 'package:flutter/material.dart';
import 'package:untitled/class.dart';

import 'main.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('intro'),
      ),
      body: Column(
        children: [
          Text('vcusbn',style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w100,
          ),),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=>  myHomePage()),
            );
    }, child: Text('next'))
        ],
      ),
    );
  }

}