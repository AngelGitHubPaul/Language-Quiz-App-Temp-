import 'package:flutter/material.dart';
import 'dart:math';

import 'package:helloworld/quiz_pages/results_pages/defeat_page.dart';
import 'package:helloworld/quiz_pages/results_pages/victory_page.dart';
import 'package:provider/provider.dart';
import '../providers/currency.dart';
import '../providers/lives.dart';

var rng = Random();

class Katakana {
  final String jp;
  final String en;

  Katakana({required this.jp, required this.en});
}

final List<Katakana> katakanaList = [
  Katakana(jp: 'ア', en: 'a'),
  Katakana(jp: 'イ', en: 'i'),
  Katakana(jp: 'ウ', en: 'u'),
  Katakana(jp: 'エ', en: 'e'),
  Katakana(jp: 'オ', en: 'o'),
  Katakana(jp: 'カ', en: 'ka'),
  Katakana(jp: 'キ', en: 'ki'),
  Katakana(jp: 'ク', en: 'ku'),
  Katakana(jp: 'ク', en: 'ke'),
  Katakana(jp: 'コ', en: 'ko'),
  Katakana(jp: 'サ', en: 'sa'),
  Katakana(jp: 'シ', en: 'shi'),
  Katakana(jp: 'ス', en: 'su'),
  Katakana(jp: 'セ', en: 'se'),
  Katakana(jp: 'ソ', en: 'so'),
  Katakana(jp: 'タ', en: 'ta'),
  Katakana(jp: 'チ', en: 'chi'),
  Katakana(jp: 'ツ', en: 'tsu'),
  Katakana(jp: 'テ', en: 'te'),
  Katakana(jp: 'ト', en: 'to'),
  Katakana(jp: 'ナ', en: 'na'),
  Katakana(jp: 'ニ', en: 'ni'),
  Katakana(jp: 'ヌ', en: 'nu'),
  Katakana(jp: 'ネ', en: 'ne'),
  Katakana(jp: 'ノ', en: 'no'),
  Katakana(jp: 'ハ', en: 'ha'),
  Katakana(jp: 'ヒ', en: 'hi'),
  Katakana(jp: 'フ', en: 'fu'),
  Katakana(jp: 'ヘ', en: 'he'),
  Katakana(jp: 'ホ', en: 'ho'),
  Katakana(jp: 'マ', en: 'ma'),
  Katakana(jp: 'ミ', en: 'mi'),
  Katakana(jp: 'ム', en: 'mu'),
  Katakana(jp: 'メ', en: 'me'),
  Katakana(jp: 'モ', en: 'mo'),
  Katakana(jp: 'ヤ', en: 'ya'),
  Katakana(jp: 'ユ', en: 'yu'),
  Katakana(jp: 'ヨ', en: 'yo'),
  Katakana(jp: 'ラ', en: 'ra'),
  Katakana(jp: 'リ', en: 'ri'),
  Katakana(jp: 'ル', en: 'ru'),
  Katakana(jp: 'レ', en: 're'),
  Katakana(jp: 'ロ', en: 'ro'),
  Katakana(jp: 'ワ', en: 'wa'),
  Katakana(jp: 'ヲ', en: 'wo'),
  Katakana(jp: 'ン', en: 'n'),
  Katakana(jp: 'ガ', en: 'ga'),
  Katakana(jp: 'ギ', en: 'gi'),
  Katakana(jp: 'グ', en: 'gu'),
  Katakana(jp: 'ゲ', en: 'ge'),
  Katakana(jp: 'ゴ', en: 'go'),
  Katakana(jp: 'ザ', en: 'za'),
  Katakana(jp: 'ジ', en: 'ji'),
  Katakana(jp: 'ズ', en: 'zu'),
  Katakana(jp: 'ゼ', en: 'ze'),
  Katakana(jp: 'ゾ', en: 'zo'),
  Katakana(jp: 'ダ', en: 'da'),
  Katakana(jp: 'ヂ', en: 'ji'),
  Katakana(jp: 'ヅ', en: 'zu'),
  Katakana(jp: 'デ', en: 'de'),
  Katakana(jp: 'ド', en: 'do'),
  Katakana(jp: 'バ', en: 'ba'),
  Katakana(jp: 'ビ', en: 'bi'),
  Katakana(jp: 'ブ', en: 'bu'),
  Katakana(jp: 'ベ', en: 'be'),
  Katakana(jp: 'ボ', en: 'bo'),
  Katakana(jp: 'パ', en: 'pa'),
  Katakana(jp: 'ピ', en: 'pi'),
  Katakana(jp: 'プ', en: 'pu'),
  Katakana(jp: 'ペ', en: 'pe'),
  Katakana(jp: 'ポ', en: 'po'),
  Katakana(jp: 'キャ', en: 'kya'),
  Katakana(jp: 'キュ', en: 'kyu'),
  Katakana(jp: 'キョ', en: 'kyo'),
  Katakana(jp: 'シャ', en: 'sha'),
  Katakana(jp: 'シュ', en: 'shu'),
  Katakana(jp: 'ショ', en: 'しょ'),
  Katakana(jp: 'チャ', en: 'cha'),
  Katakana(jp: 'チュ', en: 'chu'),
  Katakana(jp: 'チョ', en: 'cho'),
  Katakana(jp: 'ニャ', en: 'nya'),
  Katakana(jp: 'ニュ', en: 'nyu'),
  Katakana(jp: 'ニョ', en: 'nyo'),
  Katakana(jp: 'ヒャ', en: 'hya'),
  Katakana(jp: 'ヒュ', en: 'hyu'),
  Katakana(jp: 'ヒョ', en: 'hyo'),
  Katakana(jp: 'ミャ', en: 'mya'),
  Katakana(jp: 'ミュ', en: 'myu'),
  Katakana(jp: 'ミョ', en: 'myo'),
  Katakana(jp: 'リャ', en: 'rya'),
  Katakana(jp: 'リュ', en: 'ryu'),
  Katakana(jp: 'リョ', en: 'ryo'),
  Katakana(jp: 'ギャ', en: 'gya'),
  Katakana(jp: 'ギュ', en: 'gyu'),
  Katakana(jp: 'ギョ', en: 'gyo'),
  Katakana(jp: 'ジャ', en: 'ja'),
  Katakana(jp: 'ジュ', en: 'ju'),
  Katakana(jp: 'ジョ', en: 'jo'),
  Katakana(jp: 'ビャ', en: 'bya'),
  Katakana(jp: 'ビュ', en: 'byu'),
  Katakana(jp: 'ビョ', en: 'byo'),
  Katakana(jp: 'ピャ', en: 'pya'),
  Katakana(jp: 'ピュ', en: 'pyu'),
  Katakana(jp: 'ピョ', en: 'pyo'),
];

class KatakanaQuizPage extends StatefulWidget {
  const KatakanaQuizPage({Key? key}) : super(key: key);
  @override
  _KatakanaQuizPageState createState() => _KatakanaQuizPageState();
}

class _KatakanaQuizPageState extends State<KatakanaQuizPage> {
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
  var rngIndex = List.generate(10, (_) => rng.nextInt(102));

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
                                  katakanaList[rngIndex[index].toInt()].jp,
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
                                      katakanaList[rngIndex[index].toInt()]
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
