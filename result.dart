import 'dart:ui';

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  @override
  final int total;
  final Function resets;
  result(this.total, this.resets);
  String get phrase {
    String text;
    if (total <= 30) text = "Try hard";
    if (total > 30 && total <= 45)
      text = "Better";
    else if (total > 45) text = "Bravo! You win";
    return text;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          phrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart'), onPressed: resets),
      ]),
    );
  }
}
