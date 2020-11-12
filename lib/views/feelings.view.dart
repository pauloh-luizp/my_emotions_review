import 'package:flutter/material.dart';

class Feelings extends StatefulWidget {
  Feelings({Key key}) : super(key: key);

  @override
  _FeelingsState createState() => _FeelingsState();
}

class _FeelingsState extends State<Feelings> {
  String currentFeeling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Emotions Review'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("++ Feliz"),
              subtitle: Text("Fico muito feliz pois você está muito feliz!"),
              activeColor: Colors.lightGreenAccent[400],
              value: "Muito Feliz",
              groupValue: currentFeeling,
              onChanged: (String valor) {
                setState(() {
                  currentFeeling = valor;
                });
              },
            ),
            RadioListTile(
              title: Text("+ Feliz"),
              subtitle: Text("Eeee que bom que está feliz!"),
              activeColor: Colors.lightGreen,
              value: "Feliz",
              groupValue: currentFeeling,
              onChanged: (String valor) {
                setState(() {
                  currentFeeling = valor;
                });
              },
            ),
            RadioListTile(
              title: Text("= Neutro"),
              subtitle: Text("Me diga como se sente"),
              activeColor: Colors.blueGrey,
              value: "Neutro",
              groupValue: currentFeeling,
              onChanged: (String valor) {
                setState(() {
                  currentFeeling = valor;
                });
              },
            ),
            RadioListTile(
              title: Text("- Triste"),
              subtitle: Text("Quer conversar?"),
              activeColor: Colors.red[700],
              value: "Triste",
              groupValue: currentFeeling,
              onChanged: (String valor) {
                setState(() {
                  currentFeeling = valor;
                });
              },
            ),
            RadioListTile(
              title: Text("-- Triste"),
              subtitle: Text("Não fique assim, vamos conversar"),
              activeColor: Colors.redAccent[700],
              value: "Muito Triste",
              groupValue: currentFeeling,
              onChanged: (String valor) {
                setState(() {
                  currentFeeling = valor;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
