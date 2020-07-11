import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int resultScore;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'Score: ${resultScore}/100' +
          '\n' +
          'Are you sure you are a Ghanaian??';
    } else if (resultScore <= 60) {
      resultText = 'Score: ${resultScore}/100' +
          '\n' +
          'Try again ! You can do better !';
    } else if (resultScore < 100) {
      resultText = 'Score: ${resultScore}/100' +
          '\n' +
          'You almost nailed all correct !';
    } else
      resultText = 'Score: ${resultScore}/100' + '\n' + 'Excellent!!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 25),
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
