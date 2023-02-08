

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class con extends StatelessWidget {
   con({
    required this.wword,required this.cclick
  });
String wword;
String cclick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
       Navigator.pushNamed(context, cclick);
    }
      ,child: Container(margin: EdgeInsets.symmetric(vertical: 8),color: Colors.blue,width: double.infinity,height: 40,child: Center(child: Text(wword,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),)),));
  }
}