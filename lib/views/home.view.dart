import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/summaryFeelings.view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Clotilde.jpg',
              width: 350,
              height: 350,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Oi Clotilde!', style: TextStyle(fontSize: 24)),
              color: Colors.orange[800],
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SummaryFeelings()),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
