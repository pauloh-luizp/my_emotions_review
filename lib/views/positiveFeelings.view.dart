import 'package:flutter/material.dart';

class PositiveFeelings extends StatefulWidget {
  PositiveFeelings({Key key}) : super(key: key);

  @override
  _PositiveFeelingsState createState() => _PositiveFeelingsState();
}

class _PositiveFeelingsState extends State<PositiveFeelings> {
  bool positive;

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
              title: const Text('Felicidade'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Humor'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Alegria'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Amor'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Gratidão'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Esperança'),
              value: false,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  positive = valor;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
