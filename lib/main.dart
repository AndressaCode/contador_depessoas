import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Contador de Pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar";

  void _changePeople(int delta){
    setState(() {
      _people += delta;

/*      if(_people <0){
        _infoText = "Mundo invertido?";
      } else if(_people >=0){
        _infoText = "Pode entrar";
      } else if (_people>10){
        _infoText = "Está lotado!";
      }*/

      if(_people>=0 && _people<=9){
        _infoText = "Pode entrar";
      } else if(_people>9){
        _infoText = "Está lotado!";
      } else{
        _infoText = "Mundo invertido?";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/fundo.jpg",
          fit: BoxFit.fill,
          height: 1000.0,
          width: 2000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("My first flutter app", style: TextStyle(fontSize: 20.0, color: Colors.black, fontStyle: FontStyle.italic),),
            SizedBox(height: 40.0),
            Text("Pessoas: $_people",
                style: TextStyle(fontSize: 35.0, color: Colors.green[900])),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.greenAccent,
                      onPressed: (){
                        _changePeople(1);
                      },
                      child: Text("+ 1", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.greenAccent,
                      onPressed: (){
                        _changePeople(-1);
                      },
                      child: Text("- 1", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
                    ),
                  ),
                ],
              ),
            Text(_infoText,
              style: TextStyle(fontSize: 35.0, color: Colors.green[900]),),
          ],
        ),
      ],
    );
  }
}
