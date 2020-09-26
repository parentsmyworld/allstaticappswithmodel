import 'package:flutter/material.dart';
import 'package:flutter_allappswithmodels/pages/Intropage.dart';
import 'package:flutter_allappswithmodels/pages/Studentdetails.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Intro()
      ),
    );
  }
}
