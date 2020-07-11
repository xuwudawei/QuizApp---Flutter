import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Which country is east to Ghana?',
      'answers': [
        {'text': 'Togo', 'score': 10},
        {'text': 'Benin', 'score': 0},
        {'text': 'Cote D\'Ivoire', 'score': 0},
        {'text': 'USA', 'score': 0}
      ],
    },
    {
      'questionText': 'Who became Ghana\'s President on 7th January,2001 ?',
      'answers': [
        {'text': 'John Kufuor', 'score': 10},
        {'text': 'Kwame Nkrumah', 'score': 0},
        {'text': 'John Mahama', 'score': 0},
        {'text': 'JJ Rawlings', 'score': 0},
      ],
    },
    {
      'questionText': 'When did the Portuguese build ELmina Castle ?',
      'answers': [
        {'text': '1482', 'score': 10},
        {'text': '1999', 'score': 0},
        {'text': '1460', 'score': 0},
        {'text': '1620', 'score': 0},
      ],
    },
    {
      'questionText': 'Which country is east to Ghana?',
      'answers': [
        {'text': 'Togo', 'score': 10},
        {'text': 'Benin', 'score': 0},
        {'text': 'Cote D\'Ivoire', 'score': 0},
        {'text': 'USA', 'score': 0}
      ],
    },
    {
      'questionText': 'Who became Ghana\'s President on 7th January,2001 ?',
      'answers': [
        {'text': 'John Kufuor', 'score': 10},
        {'text': 'Kwame Nkrumah', 'score': 0},
        {'text': 'John Mahama', 'score': 0},
        {'text': 'JJ Rawlings', 'score': 0},
      ],
    },
    {
      'questionText': 'When did the Portuguese build ELmina Castle ?',
      'answers': [
        {'text': '1482', 'score': 10},
        {'text': '1999', 'score': 0},
        {'text': '1460', 'score': 0},
        {'text': '1620', 'score': 0},
      ],
    },
    {
      'questionText': 'Which country is east to Ghana?',
      'answers': [
        {'text': 'Togo', 'score': 10},
        {'text': 'Benin', 'score': 0},
        {'text': 'Cote D\'Ivoire', 'score': 0},
        {'text': 'USA', 'score': 0}
      ],
    },
    {
      'questionText': 'Who became Ghana\'s President on 7th January,2001 ?',
      'answers': [
        {'text': 'John Kufuor', 'score': 10},
        {'text': 'Kwame Nkrumah', 'score': 0},
        {'text': 'John Mahama', 'score': 0},
        {'text': 'JJ Rawlings', 'score': 0},
      ],
    },
    {
      'questionText': 'When did the Portuguese build ELmina Castle ?',
      'answers': [
        {'text': '1482', 'score': 10},
        {'text': '1999', 'score': 0},
        {'text': '1460', 'score': 0},
        {'text': '1620', 'score': 0},
      ],
    },
    {
      'questionText': 'Who became Ghana\'s President on 7th January,2001 ?',
      'answers': [
        {'text': 'John Kufuor', 'score': 10},
        {'text': 'Kwame Nkrumah', 'score': 0},
        {'text': 'John Mahama', 'score': 0},
        {'text': 'JJ Rawlings', 'score': 0},
      ],
    },
    {
      'questionText': 'When did the Portuguese build ELmina Castle ?',
      'answers': [
        {'text': '1482', 'score': 10},
        {'text': '1999', 'score': 0},
        {'text': '1460', 'score': 0},
        {'text': '1620', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else
      print('No more questions!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Short Quiz about Ghana'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
