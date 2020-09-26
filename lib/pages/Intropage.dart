import 'package:flutter/material.dart';
import 'package:flutter_allappswithmodels/pages/Books.dart';
import 'package:flutter_allappswithmodels/pages/Fruits.dart';
import 'package:flutter_allappswithmodels/pages/Studentdetails.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      child: Center(
        child: Column(

          children: [
            SizedBox(height: 140,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(StudentDetails())));
              },
              child: Container(
                height: 80,
                width: 100,
                color: Colors.amber,
                child: Center(child: Text("Students \nDetails")),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Fruits())));
              },
              child: Container(
                height: 80,
                width: 100,
                color: Colors.amber,
                child: Center(child: Text("Fruits App")),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Book())));
              },
              child: Container(
                height: 80,
                width: 100,
                color: Colors.amber,
                child: Center(child: Text("Book App")),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
