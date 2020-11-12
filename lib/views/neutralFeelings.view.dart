import 'package:flutter/material.dart';

class NeutralFeelings extends StatefulWidget {
  NeutralFeelings({Key key}) : super(key: key);

  @override
  _NeutralFeelingsState createState() => _NeutralFeelingsState();
}

class _NeutralFeelingsState extends State<NeutralFeelings> {
  bool neutral;

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
              value: false,
              activeColor: Colors.blueGrey,
              onChanged: (bool valor) {
                setState(() {
                  neutral = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Surpresa'),
              value: false,
              activeColor: Colors.blueGrey,
              onChanged: (bool valor) {
                setState(() {
                  neutral = valor;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
