// Copyright 2019 Akshay Chatterjee. All rights reserved.


import 'package:flutter/material.dart';
import '';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup generator'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return listvw(context);
  }
}

class Programming extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web development"),
      ),
       body: Hashlayout(),
    );
  }
}

class Hashlayout extends StatelessWidget
{
  Widget build(BuildContext bc)
  {
                                                                                                                                                      
  }
}

Widget listvw(BuildContext context)
{
  final cards=["Web Development","Android Development",
  "iOS Development","Cross Platform Develoment","E-Marketing","AI solutions",
  "Advertisement"];
  final icons=[Icons.computer,Icons.smartphone,Icons.question_answer,
  Icons.broken_image,Icons.business_center,Icons.directions_walk,Icons.event];
  return ListView.builder(
    itemCount: cards.length,
    itemBuilder: (context,index){
     return Card(
       color: index%2==0 ? Colors.black : Colors.white,
       shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0),side: BorderSide(color: Colors.blue)),
       child: ListTile(
         leading: Icon(icons[index]),
         title: Text(cards[index],style: TextStyle(color: index%2==0 ? Colors.white : Colors.cyan)),
         subtitle: Text("For your nakri...",style: TextStyle(color: index%2==0 ? Colors.orange : Colors.deepOrange)),
       ),
       
     );
    },
  );
}