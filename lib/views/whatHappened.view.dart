import 'package:flutter/material.dart';
import 'package:my_emotions_review/models/emotions.model.dart';
import 'package:my_emotions_review/views/summaryFeelings.view.dart';
import 'package:my_emotions_review/controllers/emotions.controller.dart';

class WhatHappened extends StatefulWidget {
  final List yourfeelings;
  final String currentFeeling;

  WhatHappened(this.yourfeelings, this.currentFeeling);

  @override
  _WhatHappenedState createState() => _WhatHappenedState();
}

class _WhatHappenedState extends State<WhatHappened> {
  var _whatHappened = TextEditingController();
  var _thoughtOfDoing = TextEditingController();
  var _whatDid = TextEditingController();
  EmotionsController _emotionsController = EmotionsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Emotions Review'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: SingleChildScrollView(
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
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Registrar', style: TextStyle(fontSize: 24)),
              color: Colors.orange[800],
              textColor: Colors.white,
              onPressed: () {
                _emotionsController.getAll().then((value) {
                  _emotionsController.create(Emotions(
                      id: 0,
                      date: DateTime.now().toString(),
                      feelings: widget.currentFeeling,
                      yourfeelings: widget.yourfeelings,
                      whathappened: _whatHappened.text,
                      doingit: _thoughtOfDoing.text,
                      whatdid: _whatDid.text));
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SummaryFeelings()),
                  );
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
