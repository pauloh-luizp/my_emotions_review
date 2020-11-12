import 'package:flutter/material.dart';

class NegativeFeelings extends StatefulWidget {
  NegativeFeelings({Key key}) : super(key: key);

  @override
  _NegativeFeelingsState createState() => _NegativeFeelingsState();
}

class _NegativeFeelingsState extends State<NegativeFeelings> {
  bool negative;

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
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Medo'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Hostilidade'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Frustação'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Raiva'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('desespero'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Culpa'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Ciumes'),
                value: false,
                activeColor: Colors.red[700],
                onChanged: (bool valor) {
                  setState(() {
                    negative = valor;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
