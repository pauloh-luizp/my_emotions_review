import 'package:flutter/material.dart';

class WhatHappened extends StatefulWidget {
  WhatHappened({Key key}) : super(key: key);

  @override
  _WhatHappenedState createState() => _WhatHappenedState();
}

class _WhatHappenedState extends State<WhatHappened> {
  var _controler1 = TextEditingController();

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
        children: [TextFormField()],
      )),
    );
  }
}
