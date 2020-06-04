
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print("You chose a answer to the question");
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What is your favorite color?",
      "What is your favorite food?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Making of My First App"),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text("I am answer 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("I am answer 2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("I am answer 3"),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}