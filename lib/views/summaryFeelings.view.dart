import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/feelings.view.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(
                          child: Text("data e emoções"),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.orange[800],
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Feelings()),
            );
          }),
    );
  }
}
