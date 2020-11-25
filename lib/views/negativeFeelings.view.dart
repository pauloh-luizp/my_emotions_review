import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/whathappened.view.dart';

class NegativeFeelings extends StatefulWidget {
  final String currentFeeling;

  NegativeFeelings(this.currentFeeling);

  @override
  _NegativeFeelingsState createState() => _NegativeFeelingsState();
}

class _NegativeFeelingsState extends State<NegativeFeelings> {
  bool tristeza = false;
  bool medo = false;
  bool hostilidade = false;
  bool frustacao = false;
  bool raiva = false;
  bool desespero = false;
  bool culpa = false;
  bool ciumes = false;
  var yourfeelings = List();

  validation() {
    if (tristeza) yourfeelings.add("tristeza");
    if (medo) yourfeelings.add("medo");
    if (hostilidade) yourfeelings.add("hostilidade");
    if (frustacao) yourfeelings.add("frustação");
    if (raiva) yourfeelings.add("raiva");
    if (desespero) yourfeelings.add("desespero");
    if (culpa) yourfeelings.add("culpa");
    if (ciumes) yourfeelings.add("ciúmes");
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
                title: const Text('Tristeza'),
                value: tristeza,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    tristeza = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Medo'),
                value: medo,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    medo = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Hostilidade'),
                value: hostilidade,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    hostilidade = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Frustação'),
                value: frustacao,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    frustacao = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Raiva'),
                value: raiva,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    raiva = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Desespero'),
                value: desespero,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    desespero = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Culpa'),
                value: culpa,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    culpa = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Ciumes'),
                value: ciumes,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    ciumes = valor;
                  });
                },
              ),
              RaisedButton(
                child: Text('Estou me sentido assim',
                    style: TextStyle(fontSize: 24)),
                color: Colors.orange[800],
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) =>
                            WhatHappened(yourfeelings, widget.currentFeeling)),
                  );
                },
              )
            ],
          ),
        ));
  }
}
