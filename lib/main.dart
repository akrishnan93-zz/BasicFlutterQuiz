import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(new MyApp());
// }

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favorite color?",
      "answers": ['Black', 'White', "Red", "Green"]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": ['Dog', 'Cat', "Girrafe", "Rabbit"]
    },
    {
      "questionText": "Who is your favorite programer?",
      "answers": ['Anand', 'Anand', "Anand", "Anand"]
    },
  ];

  var _questionCount = 0;

  void _answerQuestion() {
    if (_questionCount < _questions.length) {
      print("We have more questions!");
    } else {
      print("We do not have more questions!");
    }

    setState(() {
      _questionCount++;
    });

    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionCount < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionCount,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
