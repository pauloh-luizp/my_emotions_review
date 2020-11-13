import 'package:flutter/material.dart';

class NegativeFeelings extends StatefulWidget {
  NegativeFeelings({Key key}) : super(key: key);

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
            ],
          ),
        ));
  }
}
