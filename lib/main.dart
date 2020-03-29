import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Pessoas: 0", style: TextStyle(fontSize: 22.0, color: Colors.amber),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("+1", style: TextStyle(fontSize: 22.0, color: Colors.amber)),
            Text("-1", style: TextStyle(fontSize: 22.0, color: Colors.amber)),
          ],
        ),
        Text("Pode entrar!", style: TextStyle(fontSize: 22.0, color: Colors.amber),),
      ],
    ),
  ));
}