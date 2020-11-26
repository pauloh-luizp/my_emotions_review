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
                for (int i = 0; i < _emotionsController.list.length; i++)
                  ListTile(
                    title: Card(
                        child: Column(
                      children: [
                        ListTile(
                          title: Center(
                              child: Text(_emotionsController.list[i].date)),
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
                        Divider(),
                        /*for (int j = 0;
                            j < _emotionsController.list[i].yourfeelings.length;
                            j++)
                          Text(_emotionsController.list[i].yourfeelings[j]),*/
                        Text(_emotionsController.list[i].yourfeelings
                            .toString()),
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
