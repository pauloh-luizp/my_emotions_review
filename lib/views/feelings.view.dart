import 'package:flutter/material.dart';

class Feelings extends StatelessWidget {
  const Feelings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
