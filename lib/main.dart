import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/home.view.dart';

void main() {
  runApp(MyEmotions());
}

class MyEmotions extends StatelessWidget {
  const MyEmotions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
