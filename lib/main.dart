import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() => MyAppState();
}
 class MyAppState extends State<MyApp>{
   int questionNumber=0;
  void answerQuestion() {
    setState(() {
      questionNumber=questionNumber+1;
    });

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
            Text(question[questionNumber]),
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
