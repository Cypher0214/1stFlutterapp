import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   int questionNumber=0;
  void answerQuestion() {
     questionNumber++;
    print(questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      " What's your favourite colour ",
      " what's your pet's name "
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text("The question"),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen "),
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 chosen");
                answerQuestion();
              }
            ),
          ],
        ),
      ),
    );
  }
}
