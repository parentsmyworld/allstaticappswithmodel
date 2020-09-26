import 'package:flutter/material.dart';
import 'package:flutter_allappswithmodels/Models/fruits.dart';


class Fruits extends StatefulWidget {

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  List<Fruitz> fruitsimages=[
    Fruitz(names:"KIWI", images:"https://post.healthline.com/wp-content/uploads/2020/01/kiwi-fruit-732x549-thumbnail.jpg"),
    Fruitz(names:"AVACADO", images:"https://www.laijau.com/wp-content/uploads/2020/04/Avocado.jpg"),
    Fruitz(names:"WATERMELON", images:"https://www.treehugger.com/thmb/LCZZvoW77dy039qLAgRXxe1Jtng=/889x667/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2018__06__cut_watermelon-527e7c70d4dd41ef9d766d3f6ac9559d.jpg"),
    Fruitz(names:"GREEN APPLE", images:"https://bh.goodtaste.com/media/cache/48/6a/486aa9a07a14e0da1612b69f34e634f4.jpg"),

  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20.0),
          child:GridView.builder(
              itemCount:fruitsimages.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context,index){
                return Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 200,

                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(fruitsimages[index].images))
                        ),


                      ),

                      Container(
                          width: 160,
                          child: Center(child: Text(fruitsimages[index].names)))
                    ],
                  ),
                );
              }) ,
















        ),
      ),
    );
  }
}
