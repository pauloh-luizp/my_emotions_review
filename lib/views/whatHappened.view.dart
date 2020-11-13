import 'package:flutter/material.dart';

class WhatHappened extends StatefulWidget {
  WhatHappened({Key key}) : super(key: key);

  @override
  _WhatHappenedState createState() => _WhatHappenedState();
}

class _WhatHappenedState extends State<WhatHappened> {
  var _whatHappened = TextEditingController();
  var _thoughtOfDoing = TextEditingController();
  var _whatDid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Emotions Review'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Scrollbar(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _whatHappened,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "O que aconteceu?",
                labelStyle: TextStyle(color: Colors.orange[800], fontSize: 24),
              ),
              maxLines: 4,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _thoughtOfDoing,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "O que você pensou em fazer?",
                labelStyle: TextStyle(color: Colors.orange[800], fontSize: 24),
              ),
              maxLines: 4,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _whatDid,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "O que você fez?",
                labelStyle: TextStyle(color: Colors.orange[800], fontSize: 24),
              ),
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
