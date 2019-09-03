import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Home()
    ,));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoa =0;
  String _index = "You may enter";

  void _person(int add){
    setState(() {
      _pessoa = _pessoa + add;

      if (_pessoa < 0) {
        _index = "inversion";
      } else if (_pessoa <= 10) {
        _index = "You may enter";
      } else {
        _index = "full";
      }
    });
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('images/restaurant.jpg',fit: BoxFit.cover,height: 1000.0,),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Pessoas :$_pessoa',style: TextStyle(fontSize: 40.0, color: Colors.white),),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(onPressed: (){_person(1);}, child: Text('+1',style: TextStyle(fontSize: 40.0, color: Colors.white),))
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(onPressed: (){_person(-1);}, child: Text('-1',style: TextStyle(fontSize: 40.0, color: Colors.white),))
            ),
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$_index',style: TextStyle(fontSize: 40.0, color: Colors.white),),
          )
        ],)

      ],
    );
  }
}
