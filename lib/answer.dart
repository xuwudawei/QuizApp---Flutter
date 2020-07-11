import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 350,
          height: 65,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 32),
            ),
            onPressed: selectHandler,
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
