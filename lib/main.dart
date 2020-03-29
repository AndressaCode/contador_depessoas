import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Contador de Pessoas",
    home: Stack(
      children: <Widget>[
        Image.asset(
          "images/fundo.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: 0", style: TextStyle(fontSize: 35.0, color: Colors.amber),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("+ 1", style: TextStyle(fontSize: 30.0, color: Colors.amber),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("- 1", style: TextStyle(fontSize: 30.0, color: Colors.amber),),
                  ),
                ),
              ],
            ),
            Text("Pode entrar!", style: TextStyle(fontSize: 35.0, color: Colors.amber),),
          ],
        ),
      ],
    ),
  ));
}