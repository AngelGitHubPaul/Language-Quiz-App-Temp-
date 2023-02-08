import 'package:flutter/material.dart';
import 'package:polylingo_app/quiz_pages/baybayin_quiz.dart';
import 'package:polylingo_app/quiz_pages/greek_quiz.dart';
import 'package:polylingo_app/quiz_pages/hangul_quiz.dart';
import 'package:polylingo_app/quiz_pages/hiragana_quiz.dart';
import 'package:polylingo_app/quiz_pages/katakana_quiz.dart';
import 'package:polylingo_app/quiz_pages/russian_quiz.dart';
import 'package:provider/provider.dart';

import 'providers/themes.dart';

class Languages {
  final String lang;
  final String en;

  Languages({required this.lang, required this.en});
}

final List<Languages> languages = [
  Languages(lang: 'あ', en: 'Hiragana'),
  Languages(lang: 'ア', en: 'Katakana'),
  Languages(lang: 'ᜀ', en: 'Baybayin'),
  Languages(lang: '아', en: 'Hangul'),
  Languages(lang: 'Бб', en: 'Russian'),
  Languages(lang: 'Α α', en: 'Greek'),
];

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chose Language Quiz'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const LanguageOptions(),
    );
  }
}

class LanguageOptions extends StatelessWidget {
  const LanguageOptions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return GridView.builder(
      itemCount: languages.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Card(
          child: InkWell(
        onTap: () {
          switch (index) {
            case 0:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HiraganaQuizPage();
                    },
                  ),
                );
              }
              break;
            case 1:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const KatakanaQuizPage();
                    },
                  ),
                );
              }
              break;
            case 2:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BaybayinQuizPage();
                    },
                  ),
                );
              }
              break;
            case 3:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HangulQuizPage();
                    },
                  ),
                );
              }
              break;
            case 4:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const RussianQuizPage();
                    },
                  ),
                );
              }
              break;
            case 5:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const GreekQuizPage();
                    },
                  ),
                );
              }
              break;
          }
        },
        child: GridTile(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Text(
                (languages[index].lang),
                style: TextStyle(
                  color: theme,
                  fontSize: 40.0,
                ),
              ),
              Text(
                (languages[index].en),
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ]))),
      )),
    );
  }
}
