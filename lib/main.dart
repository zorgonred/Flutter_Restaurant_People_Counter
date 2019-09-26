import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "People Counter",
    home: People(),
    debugShowCheckedModeBanner: false,

  ));
}

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  int _people=0;
  String _instruction= "You may enter";

  void _add(int add){
   setState(() {
     _people += add;

     if(_people <= 10){
       _instruction = "You may enter";
     } else if (_people < 0){
       _instruction = "Please come!";
     } else {
       _instruction = "We are full";
     }

   });
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: <Widget>[
            Image.asset('images/restaurant.jpg',height: 1000,fit: BoxFit.cover,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('People : $_people',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 40.0),),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(onPressed: (){_add(1);}, child: Text("+1",style: TextStyle(fontSize: 40.0,color: Colors.white),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(onPressed: (){_add(-1);}, child: Text("-1",style: TextStyle(fontSize: 40.0,color: Colors.white))
                      ),
                    )],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$_instruction", style: TextStyle(fontSize: 40.0,color: Colors.white)
                  ),
                )],
            )
          ],
        ),
      ),
    );
  }
}
