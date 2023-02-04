import 'package:flutter/material.dart';
import 'dart:math';

import 'package:polylingo_app/quiz_pages/results_pages/defeat_page.dart';
import 'package:polylingo_app/quiz_pages/results_pages/victory_page.dart';
import 'package:provider/provider.dart';
import '../providers/currency.dart';
import '../providers/lives.dart';

var rng = Random();

List<String> greek = [
  "Α α",
  "Β β",
  "Γ γ",
  "Δ δ",
  "Ε ε",
  "Ζ ζ",
  "Η η",
  "Θ θ",
  "Ι ι",
  "Κ κ",
  "Λ λ",
  "Μ μ",
  "Ν ν",
  "Ξ ξ",
  "Ο ο",
  "Π π",
  "Ρ ρ",
  "Σ σ/ς",
  "Τ τ",
  "Υ υ",
  "Φ φ",
  "Χ χ",
  "Ψ ψ",
  "Ω ω",
];
List<String> alphabet = [
  "a",
  "b",
  "g",
  "d",
  "e",
  "z",
  "i",
  "th",
  "i",
  "k",
  "l",
  "m",
  "n",
  "x",
  "o",
  "p",
  "r",
  "s",
  "t",
  "u",
  "f",
  "x",
  "ps",
  "o",
];

class GreekQuizPage extends StatefulWidget {
  const GreekQuizPage({Key? key}) : super(key: key);
  @override
  _GreekQuizPageState createState() => _GreekQuizPageState();
}

class _GreekQuizPageState extends State<GreekQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(
                Icons.question_mark_rounded,
              )),
        ],
      ),
      body: const QuestionWidget(),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);
  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  final TextEditingController _textController = TextEditingController();
  int _questionNumber = 1;
  var rngIndex = List.generate(10, (_) => rng.nextInt(24));

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    int lives = Provider.of<Lives>(context).lives;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.favorite, size: 28.0),
              Text(
                "$lives",
                style: const TextStyle(fontSize: 28.0),
              ),
            ],
          ),
          Text(
            'Question $_questionNumber/10',
            style: const TextStyle(fontSize: 32.0),
          ),
          Expanded(
            child: PageView.builder(
                itemCount: 10,
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (content, index) {
                  final formKey = GlobalKey<FormState>();
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 275,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  greek[rngIndex[index].toInt()],
                                  style: const TextStyle(
                                    color: Colors.pink,
                                    fontSize: 75.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Form(
                        key: formKey,
                        child: SizedBox(
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextFormField(
                                controller: _textController,
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'please input answer';
                                  } else if (value !=
                                      alphabet[rngIndex[index].toInt()]) {
                                    if (lives == 1) {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return const DefeatPage();
                                          },
                                        ),
                                      );
                                    } else {
                                      Provider.of<Lives>(context, listen: false)
                                          .decreaseLives();
                                    }
                                    _textController.clear();
                                    return 'wrong answer please try again';
                                  }
                                  return null;
                                },
                                decoration:
                                    const InputDecoration(labelText: 'Answer'),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                child: Text(
                                    _questionNumber < 10 ? 'Submit' : 'Finish'),
                                onPressed: () {
                                  setState(() {
                                    if (formKey.currentState!.validate()) {
                                      if (_questionNumber < 10) {
                                        _textController.clear();
                                        _controller.nextPage(
                                            duration: const Duration(
                                                milliseconds: 250),
                                            curve: Curves.easeInExpo);
                                        _questionNumber++;
                                      } else {
                                        if (lives == 3) {
                                          Provider.of<MyCurrency>(context,
                                                  listen: false)
                                              .addCurrency(15);
                                        } else if (lives == 2) {
                                          Provider.of<MyCurrency>(context,
                                                  listen: false)
                                              .addCurrency(13);
                                        } else {
                                          Provider.of<MyCurrency>(context,
                                                  listen: false)
                                              .addCurrency(10);
                                        }
                                        Provider.of<Lives>(context,
                                                listen: false)
                                            .resetLives();
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return const VictoryPage();
                                        }));
                                      }
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
