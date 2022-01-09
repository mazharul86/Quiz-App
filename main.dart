import 'package:flutter/material.dart';
import 'package:mymap/answer.dart';
import 'package:mymap/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      {
        'questionText': 'what is your favourite color?',
        'answer': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': 'what is your favourite animal?',
        'answer': ['rabbit', 'cow', 'dog', 'goat'],
      },
      {
        'questionText': 'what is your favourite instructor?',
        'answer': ['sabit', 'sabit', 'sabit', 'sabit'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
