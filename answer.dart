import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final Function chandler;
  final String anstext; 
  answer(this.chandler, this.anstext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(anstext),
        color: Colors.blue,
        onPressed: chandler,
      ),
    );
  }
}
