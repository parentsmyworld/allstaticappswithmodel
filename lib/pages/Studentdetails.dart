import 'package:flutter/material.dart';
import 'package:flutter_allappswithmodels/Models/studentdetails.dart';

class StudentDetails extends StatelessWidget {
  List<Student> studentdetails=[
    Student(names: "hggv",email: "hj",phone: 54657),
    Student(names: "hggv",email: "hj",phone: 54657),
    Student(names: "hggv",email: "hj",phone: 54657),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Container(
         child: GridView.builder(
             itemCount: studentdetails.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             itemBuilder: (context,index){
               return Card(
                 elevation: 10,
                 child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),

                   ),
                   padding: EdgeInsets.all(15.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Name :"+studentdetails[index].names,style: TextStyle(
                           color: Colors.blue
                       ),),
                       Text("Phone No: ${studentdetails[index].phone}",style: TextStyle(color: Colors.green),),



                       Text("Email :" +studentdetails[index].email,style: TextStyle(color: Colors.red),)



                     ],



                   ),
                 ),
               );
             }),
       ),
     ),
    );
  }
}
