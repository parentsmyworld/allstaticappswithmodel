import 'package:flutter/material.dart';
import 'package:flutter_allappswithmodels/Models/Buks.dart';

class Book extends StatefulWidget {

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  List<Buks> booklist=[
    Buks(booknames: "hhgv",subtitles: "njhbj",price: 123),
    Buks(booknames: "hhgv",subtitles: "njhbj",price: 123),
    Buks(booknames: "hhgv",subtitles: "njhbj",price: 123),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: Scaffold(
  body: ListView.builder(
      itemCount: booklist.length,
      itemBuilder: (context,index){
        return  Card(
          elevation: 20,

          child: ListTile(
            leading: Icon(Icons.book),
            trailing: Icon(Icons.lock),
            title: Text("book :"+booklist[index].booknames),
            //instead of this
            // subtitle: Text("GHGHG : "+booklist[index].subtitles+"\n Price :"+booklist[index].price.toString()), we can write as
            subtitle: Text("GHGHG : "+booklist[index].subtitles+"\n Price :${booklist[index].price}"),
          ),
        );
      }
  ),
),
    );
  }
}
