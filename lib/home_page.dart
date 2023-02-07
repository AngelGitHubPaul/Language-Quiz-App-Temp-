import 'package:flutter/material.dart';
import 'package:polylingo_app/quiz_page.dart';
import 'package:provider/provider.dart';

import 'providers/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/Polylingo_logo.png'),
        title: const Text("Polylingo App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Are you ready to test your Language reading skills?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme,
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
