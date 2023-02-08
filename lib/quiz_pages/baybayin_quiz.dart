import 'package:flutter/material.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'dart:math';

import 'package:polylingo_app/quiz_pages/results_pages/defeat_page.dart';
import 'package:polylingo_app/quiz_pages/results_pages/victory_page.dart';
import 'package:provider/provider.dart';
import '../providers/lives.dart';
import '../providers/themes.dart';

class Baybayin {
  final String bay;
  final String tag1;
  final String tag2;

  Baybayin({required this.bay, required this.tag1, required this.tag2});
}

var rng = Random();
final List<Baybayin> baybayinList = [
  Baybayin(bay: 'ᜀ', tag1: 'a', tag2: 'a'),
  Baybayin(bay: 'ᜁ', tag1: 'e', tag2: 'i'),
  Baybayin(bay: 'ᜂ', tag1: 'o', tag2: 'u'),
  Baybayin(bay: 'ᜊ᜔', tag1: 'b', tag2: 'b'),
  Baybayin(bay: 'ᜊ', tag1: 'ba', tag2: 'ba'),
  Baybayin(bay: 'ᜊᜒ', tag1: 'be', tag2: 'bi'),
  Baybayin(bay: 'ᜊᜓ', tag1: 'bo', tag2: 'bu'),
  Baybayin(bay: 'ᜃ᜔', tag1: 'k', tag2: 'k'),
  Baybayin(bay: 'ᜃ', tag1: 'ka', tag2: 'ka'),
  Baybayin(bay: 'ᜃᜒ', tag1: 'ke', tag2: 'ki'),
  Baybayin(bay: 'ᜃᜓ', tag1: 'ko', tag2: 'ku'),
  Baybayin(bay: 'ᜇ᜔', tag1: 'd', tag2: 'd'),
  Baybayin(bay: 'ᜇ', tag1: 'da', tag2: 'da'),
  Baybayin(bay: 'ᜇᜒ', tag1: 'de', tag2: 'di'),
  Baybayin(bay: 'ᜇᜓ', tag1: 'do', tag2: 'du'),
  Baybayin(bay: 'ᜄ᜔', tag1: 'g', tag2: 'g'),
  Baybayin(bay: 'ᜄ', tag1: 'ga', tag2: 'ga'),
  Baybayin(bay: 'ᜄᜒ', tag1: 'ge', tag2: 'gi'),
  Baybayin(bay: 'ᜄᜓ', tag1: 'go', tag2: 'gu'),
  Baybayin(bay: 'ᜑ᜔', tag1: 'h', tag2: 'h'),
  Baybayin(bay: 'ᜑ', tag1: 'ha', tag2: 'ha'),
  Baybayin(bay: 'ᜑᜒ', tag1: 'he', tag2: 'hi'),
  Baybayin(bay: 'ᜑᜓ', tag1: 'ho', tag2: 'hu'),
  Baybayin(bay: 'ᜎ᜔', tag1: 'l', tag2: 'l'),
  Baybayin(bay: 'ᜎ', tag1: 'la', tag2: 'la'),
  Baybayin(bay: 'ᜎᜒ', tag1: 'le', tag2: 'li'),
  Baybayin(bay: 'ᜎᜓ', tag1: 'lo', tag2: 'lu'),
  Baybayin(bay: 'ᜋ᜔', tag1: 'm', tag2: 'm'),
  Baybayin(bay: 'ᜋ', tag1: 'ma', tag2: 'ma'),
  Baybayin(bay: 'ᜋᜒ', tag1: 'me', tag2: 'mi'),
  Baybayin(bay: 'ᜋᜓ', tag1: 'mo', tag2: 'mu'),
  Baybayin(bay: 'ᜈ᜔', tag1: 'n', tag2: 'n'),
  Baybayin(bay: 'ᜈ', tag1: 'na', tag2: 'na'),
  Baybayin(bay: 'ᜈᜒ', tag1: 'ne', tag2: 'ni'),
  Baybayin(bay: 'ᜈᜓ', tag1: 'no', tag2: 'nu'),
  Baybayin(bay: 'ᜅ᜔', tag1: 'ng', tag2: 'ng'),
  Baybayin(bay: 'ᜅ', tag1: 'nga', tag2: 'nga'),
  Baybayin(bay: 'ᜅᜒ', tag1: 'nge', tag2: 'ngi'),
  Baybayin(bay: 'ᜅᜓ', tag1: 'ngo', tag2: 'ngu'),
  Baybayin(bay: 'ᜉ᜔', tag1: 'p', tag2: 'p'),
  Baybayin(bay: 'ᜉ', tag1: 'pa', tag2: 'pa'),
  Baybayin(bay: 'ᜉᜒ', tag1: 'pe', tag2: 'pi'),
  Baybayin(bay: 'ᜉᜓ', tag1: 'po', tag2: 'pu'),
  Baybayin(bay: 'ᜐ᜔', tag1: 's', tag2: 's'),
  Baybayin(bay: 'ᜐ', tag1: 'sa', tag2: 'sa'),
  Baybayin(bay: 'ᜐᜒ', tag1: 'se', tag2: 'si'),
  Baybayin(bay: 'ᜐᜓ', tag1: 'so', tag2: 'su'),
  Baybayin(bay: 'ᜆ᜔', tag1: 't', tag2: 't'),
  Baybayin(bay: 'ᜆ', tag1: 'ta', tag2: 'ta'),
  Baybayin(bay: 'ᜆᜒ', tag1: 'te', tag2: 'ti'),
  Baybayin(bay: 'ᜆᜓ', tag1: 'to', tag2: 'tu'),
  Baybayin(bay: 'ᜏ᜔', tag1: 'w', tag2: 'w'),
  Baybayin(bay: 'ᜏ', tag1: 'wa', tag2: 'wa'),
  Baybayin(bay: 'ᜏᜒ', tag1: 'we', tag2: 'wi'),
  Baybayin(bay: 'ᜏᜓ', tag1: 'wo', tag2: 'wu'),
  Baybayin(bay: 'ᜌ᜔', tag1: 'y', tag2: 'y'),
  Baybayin(bay: 'ᜌ', tag1: 'ya', tag2: 'ya'),
  Baybayin(bay: 'ᜌᜒ', tag1: 'ye', tag2: 'yi'),
  Baybayin(bay: 'ᜌᜓ', tag1: 'yo', tag2: 'yu'),
];

class BaybayinQuizPage extends StatefulWidget {
  const BaybayinQuizPage({Key? key}) : super(key: key);
  @override
  _BaybayinQuizPageState createState() => _BaybayinQuizPageState();
}

class _BaybayinQuizPageState extends State<BaybayinQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Provider.of<Lives>(context, listen: false).resetLives();
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Tutorial'),
                      content: const Text(
                          'You are given 3 hearts at the start. Answer 10 questions right and get coins depending on how much mistakes you have made. The coins you gain can be used to buy different themes in Customization page.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
              icon: const Icon(
                Icons.question_mark_rounded,
              )),
        ],
      ),
      resizeToAvoidBottomInset: false,
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
  var rngIndex = List.generate(10, (_) => rng.nextInt(58));
  int lives = 3;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    int lives = Provider.of<Lives>(context).lives;
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
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
                                  baybayinList[rngIndex[index].toInt()].bay,
                                  style: TextStyle(
                                    color: theme,
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
                                          baybayinList[rngIndex[index].toInt()]
                                              .tag1 &&
                                      value !=
                                          baybayinList[rngIndex[index].toInt()]
                                              .tag2) {
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
                                child: const Text('Submit'),
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
