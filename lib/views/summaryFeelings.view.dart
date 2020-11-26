import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/feelings.view.dart';
import 'package:my_emotions_review/controllers/emotions.controller.dart';

class SummaryFeelings extends StatefulWidget {
  SummaryFeelings({Key key}) : super(key: key);

  @override
  _SummaryFeelingsState createState() => _SummaryFeelingsState();
}

class _SummaryFeelingsState extends State<SummaryFeelings> {
  EmotionsController _emotionsController = EmotionsController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _emotionsController.getAll().then((data) {
        setState(() {
          //_lista = _emotionsController.list;
        });
      });
    });
  }

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
          child: Container(
            child: Column(
              children: [
                for (int i = _emotionsController.list.length - 1; i > 0; i--)
                  ListTile(
                    title: Card(
                        child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _emotionsController.list[i].date,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 20.0,
                                  color: Colors.red[900],
                                ),
                                onPressed: () {
                                  _emotionsController.delete(i).then((data) {
                                    setState(() {});
                                  });
                                },
                              ),
                            ]),
                        Divider(),
                        Text(
                          _emotionsController.list[i].feelings,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(_emotionsController.list[i].yourfeelings
                            .toString()),
                        Text(
                          "O que aconteceu:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(_emotionsController.list[i].whathappened),
                        Text(
                          "O que você pensou em fazer:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(_emotionsController.list[i].doingit),
                        Text(
                          "O que você fez:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(_emotionsController.list[i].whatdid),
                      ],
                    )),
                  )
              ],
            ),
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
