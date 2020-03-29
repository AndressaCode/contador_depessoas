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
            Text("Pessoas: 0", style: TextStyle(fontSize: 35.0, color: Colors.green[900])),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.greenAccent,
                      onPressed: (){
                        debugPrint("+ 1");
                      },
                      child: Text("+ 1", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.greenAccent,
                      onPressed: (){
                        debugPrint("- 1");
                      },
                      child: Text("- 1", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
                    ),
                  ),
                ],
              ),
            Text("Pode entrar!", style: TextStyle(fontSize: 35.0, color: Colors.green[900]),),
          ],
        ),
      ],
    );
  }
}
