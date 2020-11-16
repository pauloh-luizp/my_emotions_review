import 'package:flutter/material.dart';

class SummaryFeelings extends StatefulWidget {
  SummaryFeelings({Key key}) : super(key: key);

  @override
  _SummaryFeelingsState createState() => _SummaryFeelingsState();
}

class _SummaryFeelingsState extends State<SummaryFeelings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Emotions Review'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Scrollbar(
        child: Card(
          child: Column(
            children: [
              Row(children: [Text('Emções aqui'), Spacer()])
            ],
          ),
        ),
      ),
    );
  }
}
