import 'package:flutter/material.dart';
import 'package:polylingo_app/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Polylingo App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Are you ready to test your Language reading skills?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink,
              fontSize: 25.0,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const QuizPage();
                    },
                  ),
                );
              },
              child: Container(
                child: const Text('Start Quiz!'),
                padding: const EdgeInsets.all(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
