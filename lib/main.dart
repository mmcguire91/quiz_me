import 'package:flutter/material.dart';
import 'components/quizButton.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
//  Quiz({this.optionText});
//  final String optionText;

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _questionIndex = 0;

  void nextQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      _questionIndex = 0;
    }
  }

  var questions = [
    'What\'s black, white, and red all over?',
    'How much would could a woodchuck chuck if a woodchuck could chuck wood?',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Last question',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Quiz Me!',
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  questions[_questionIndex],
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Button(
                option: 'text',
                press: nextQuestion,
              ),
              Button(
                option: 'option 2',
                press: nextQuestion,
              ),
              Button(
                option: 'option 3',
                press: nextQuestion,
              ),
              Button(
                option: 'option 4',
                press: nextQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
