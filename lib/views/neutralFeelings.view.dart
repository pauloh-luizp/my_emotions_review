import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/whathappened.view.dart';

class NeutralFeelings extends StatefulWidget {
  final String currentFeeling;

  NeutralFeelings(this.currentFeeling);

  @override
  _NeutralFeelingsState createState() => _NeutralFeelingsState();
}

class _NeutralFeelingsState extends State<NeutralFeelings> {
  bool compaixao = false;
  bool surpresa = false;
  var yourfeelings = List<String>();

  validation() {
    if (compaixao) yourfeelings.add("compaixão");
    if (surpresa) yourfeelings.add("surpresa");
  }

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
            CheckboxListTile(
              title: const Text('Compaixão'),
              value: compaixao,
              activeColor: Colors.blueGrey,
              onChanged: (bool valor) {
                setState(() {
                  compaixao = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Surpresa'),
              value: surpresa,
              activeColor: Colors.blueGrey,
              onChanged: (bool valor) {
                setState(() {
                  surpresa = valor;
                });
              },
            ),
            RaisedButton(
              child: Text('Estou me sentido assim',
                  style: TextStyle(fontSize: 24)),
              color: Colors.orange[800],
              textColor: Colors.white,
              onPressed: () {
                validation();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) =>
                          WhatHappened(yourfeelings, widget.currentFeeling)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
