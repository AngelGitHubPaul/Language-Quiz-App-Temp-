import 'package:flutter/material.dart';
import 'package:helloworld/controller.dart';
import 'dart:math';

var rng = Random();

List<String> hangul = [
  "ㄱ",
  "ㄲ",
  "ㄴ",
  "ㄷ",
  "ㄸ",
  "ㄹ",
  "ㅁ",
  "ㅂ",
  "ㅃ",
  "ㅅ",
  "ㅆ",
  "ㅇ",
  "ㅈ",
  "ㅉ",
  "ㅊ",
  "ㅋ",
  "ㅌ",
  "ㅍ",
  "ㅎ",
  "ㅏ",
  "ㅐ",
  "ㅑ",
  "ㅒ",
  "ㅓ",
  "ㅔ",
  "ㅕ",
  "ㅖ",
  "ㅗ",
  "ㅘ",
  "ㅙ",
  "ㅚ",
  "ㅛ",
  "ㅜ",
  "ㅝ",
  "ㅞ",
  "ㅟ",
  "ㅠ",
  "ㅡ",
  "ㅢ",
  "ㅣ"
];
List<String> alphabet = [
  "g",
  "kk",
  "n",
  "d",
  "tt",
  "r",
  "m",
  "b",
  "pp",
  "s",
  "ss",
  "ng",
  "j",
  "jj",
  "ch",
  "k",
  "t",
  "p",
  "h",
  "a",
  "ae",
  "ya",
  "yae",
  "eo",
  "e",
  "yeo",
  "ye",
  "o",
  "wa",
  "wae",
  "oe",
  "yo",
  "u",
  "weo",
  "we",
  "wi",
  "yu",
  "eu",
  "yi",
  "i"
];

class HangulQuizPage extends StatefulWidget {
  const HangulQuizPage({Key? key}) : super(key: key);
  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<HangulQuizPage> {
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
  var rngIndex = List.generate(10, (_) => rng.nextInt(38));

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
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
                                  hangul[rngIndex[index].toInt()],
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
                                        Navigator.of(context).pop();
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
