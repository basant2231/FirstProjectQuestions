
import 'package:dsa/Question.dart';
import 'package:flutter/material.dart';

import 'ccon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
       routes: {
    '/first': (context) => First(qqq: Question(word1: 'Black', word2: 'Green', word3: 'Blue', word4: 'yellow', question: 'What is yourfavourite color?', click: '/second'),),
    '/second': (context) => First(qqq:Question(word1: "Rabbit", word2: "Tiger", word3: "Elephant", word4: "Lion", question: "What is yourfavourite animal?", click: '/third'), ),
    '/third': (context) => First(qqq: Question(word1: "Math", word2: "Biology", word3: "Chemistry", word4: "Germany", question: "What is yourfavourite subject?",click: '/fourth'),),
    '/fourth': (context) => Last(),
  },
      home:Scaffold(
        appBar:AppBar(title: Text('Quiz App'),
        ),
        body: First(qqq: Question(word1: 'Black', word2: 'Green', word3: 'Blue', word4: 'yellow', question: 'What is yourfavourite color?', click: '/second'),),
      )
    );
  }
}




class First extends StatelessWidget {
  First({required this.qqq});
  Question qqq;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Quiz App'),),
      body: ListView(children: [
         SizedBox(height: 20,),
        Text(qqq.question,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30 ),),
        SizedBox(height: 20,),
          con(wword:qqq.word1, cclick: qqq.click,),
          con(wword: qqq.word2, cclick: qqq.click,),
          con(wword: qqq.word3,cclick:qqq.click ,),
          con(wword: qqq.word4,cclick: qqq.click,),
      ] 
      ),
    );
  }
}

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Quiz App'),),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('You are Awesome!',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,),),
          )),
          TextButton(onPressed: (){
             Navigator.pushNamed(context, '/first');
          }, child: Text('Restart the App',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,),))
        ],
      ),
    );
  }
}