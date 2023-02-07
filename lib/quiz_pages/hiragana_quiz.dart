import 'package:flutter/material.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'dart:math';

import 'package:polylingo_app/quiz_pages/results_pages/defeat_page.dart';
import 'package:polylingo_app/quiz_pages/results_pages/victory_page.dart';
import 'package:provider/provider.dart';
import '../providers/lives.dart';
import '../providers/themes.dart';

class Hiragana {
  final String jp;
  final String en;

  Hiragana({required this.jp, required this.en});
}

var rng = Random();
List<Hiragana> hiraganaList = [
  Hiragana(jp: 'あ', en: 'a'),
  Hiragana(jp: 'い', en: 'i'),
  Hiragana(jp: 'う', en: 'u'),
  Hiragana(jp: 'え', en: 'e'),
  Hiragana(jp: 'お', en: 'o'),
  Hiragana(jp: 'か', en: 'ka'),
  Hiragana(jp: 'き', en: 'ki'),
  Hiragana(jp: 'く', en: 'ku'),
  Hiragana(jp: 'け', en: 'ke'),
  Hiragana(jp: 'こ', en: 'ko'),
  Hiragana(jp: 'さ', en: 'sa'),
  Hiragana(jp: 'し', en: 'shi'),
  Hiragana(jp: 'す', en: 'su'),
  Hiragana(jp: 'せ', en: 'se'),
  Hiragana(jp: 'そ', en: 'so'),
  Hiragana(jp: 'た', en: 'ta'),
  Hiragana(jp: 'ち', en: 'chi'),
  Hiragana(jp: 'つ', en: 'tsu'),
  Hiragana(jp: 'て', en: 'te'),
  Hiragana(jp: 'と', en: 'to'),
  Hiragana(jp: 'な', en: 'na'),
  Hiragana(jp: 'に', en: 'ni'),
  Hiragana(jp: 'ぬ', en: 'nu'),
  Hiragana(jp: 'ね', en: 'ne'),
  Hiragana(jp: 'の', en: 'no'),
  Hiragana(jp: 'は', en: 'ha'),
  Hiragana(jp: 'ひ', en: 'hi'),
  Hiragana(jp: 'ふ', en: 'fu'),
  Hiragana(jp: 'へ', en: 'he'),
  Hiragana(jp: 'ほ', en: 'ho'),
  Hiragana(jp: 'ま', en: 'ma'),
  Hiragana(jp: 'み', en: 'mi'),
  Hiragana(jp: 'む', en: 'mu'),
  Hiragana(jp: 'め', en: 'me'),
  Hiragana(jp: 'も', en: 'mo'),
  Hiragana(jp: 'や', en: 'ya'),
  Hiragana(jp: 'ゆ', en: 'yu'),
  Hiragana(jp: 'よ', en: 'yo'),
  Hiragana(jp: 'ら', en: 'ra'),
  Hiragana(jp: 'り', en: 'ri'),
  Hiragana(jp: 'る', en: 'ru'),
  Hiragana(jp: 'れ', en: 're'),
  Hiragana(jp: 'ろ', en: 'ro'),
  Hiragana(jp: 'わ', en: 'wa'),
  Hiragana(jp: 'を', en: 'wo'),
  Hiragana(jp: 'ん', en: 'n'),
  Hiragana(jp: 'が', en: 'ga'),
  Hiragana(jp: 'ぎ', en: 'gi'),
  Hiragana(jp: 'ぐ', en: 'gu'),
  Hiragana(jp: 'げ', en: 'ge'),
  Hiragana(jp: 'ご', en: 'go'),
  Hiragana(jp: 'ざ', en: 'za'),
  Hiragana(jp: 'じ', en: 'ji'),
  Hiragana(jp: 'ず', en: 'zu'),
  Hiragana(jp: 'ぜ', en: 'ze'),
  Hiragana(jp: 'ぞ', en: 'zo'),
  Hiragana(jp: 'だ', en: 'da'),
  Hiragana(jp: 'ぢ', en: 'ji'),
  Hiragana(jp: 'づ', en: 'zu'),
  Hiragana(jp: 'で', en: 'de'),
  Hiragana(jp: 'ど', en: 'do'),
  Hiragana(jp: 'ば', en: 'ba'),
  Hiragana(jp: 'び', en: 'bi'),
  Hiragana(jp: 'ぶ', en: 'bu'),
  Hiragana(jp: 'べ', en: 'be'),
  Hiragana(jp: 'ぼ', en: 'bo'),
  Hiragana(jp: 'ぱ', en: 'pa'),
  Hiragana(jp: 'ぴ', en: 'pi'),
  Hiragana(jp: 'ぷ', en: 'pu'),
  Hiragana(jp: 'ぺ', en: 'pe'),
  Hiragana(jp: 'ぽ', en: 'po'),
  Hiragana(jp: 'きゃ', en: 'kya'),
  Hiragana(jp: 'きゅ', en: 'kyu'),
  Hiragana(jp: 'きょ', en: 'kyo'),
  Hiragana(jp: 'しゃ', en: 'sha'),
  Hiragana(jp: 'しゅ', en: 'shu'),
  Hiragana(jp: 'しょ', en: 'sho'),
  Hiragana(jp: 'ちゃ', en: 'cha'),
  Hiragana(jp: 'ちゅ', en: 'chu'),
  Hiragana(jp: 'ちょ', en: 'cho'),
  Hiragana(jp: 'にゃ', en: 'nya'),
  Hiragana(jp: 'にゅ', en: 'nyu'),
  Hiragana(jp: 'にょ', en: 'nyo'),
  Hiragana(jp: 'ひゃ', en: 'hya'),
  Hiragana(jp: 'ひゅ', en: 'hyu'),
  Hiragana(jp: 'ひょ', en: 'hyo'),
  Hiragana(jp: 'みゃ', en: 'mya'),
  Hiragana(jp: 'みゅ', en: 'myu'),
  Hiragana(jp: 'みょ', en: 'myo'),
  Hiragana(jp: 'りゃ', en: 'rya'),
  Hiragana(jp: 'りゅ', en: 'ryu'),
  Hiragana(jp: 'りょ', en: 'ryo'),
  Hiragana(jp: 'ぎゃ', en: 'gya'),
  Hiragana(jp: 'ぎゅ', en: 'gyu'),
  Hiragana(jp: 'ぎょ', en: 'gyo'),
  Hiragana(jp: 'じゃ', en: 'ja'),
  Hiragana(jp: 'じゅ', en: 'ju'),
  Hiragana(jp: 'じょ', en: 'jo'),
  Hiragana(jp: 'びゃ', en: 'bya'),
  Hiragana(jp: 'びゅ', en: 'byu'),
  Hiragana(jp: 'びょ', en: 'byo'),
  Hiragana(jp: 'ぴゃ', en: 'pya'),
  Hiragana(jp: 'ぴゅ', en: 'pyu'),
  Hiragana(jp: 'ぴょ', en: 'pyo'),
];

class HiraganaQuizPage extends StatefulWidget {
  const HiraganaQuizPage({Key? key}) : super(key: key);
  @override
  _HiraganaQuizPageState createState() => _HiraganaQuizPageState();
}

class _HiraganaQuizPageState extends State<HiraganaQuizPage> {
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
              onPressed: () {
                debugPrint('Actions');
              },
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
  var rngIndex = List.generate(10, (_) => rng.nextInt(102));
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
                                  hiraganaList[rngIndex[index].toInt()].jp,
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
                                      hiraganaList[rngIndex[index].toInt()]
                                          .en) {
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
