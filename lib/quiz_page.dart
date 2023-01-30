import 'package:flutter/material.dart';
import 'package:helloworld/quiz_pages/hangul_quiz.dart';
import 'package:helloworld/quiz_pages/hiragana_quiz.dart';
import 'package:helloworld/quiz_pages/katakana_quiz.dart';

class Languages {
  final String lang;
  final String en;

  Languages({required this.lang, required this.en});
}

final List<Languages> languages = [
  Languages(lang: 'あ', en: 'Hiragana'),
  Languages(lang: 'ア', en: 'Katakana'),
  Languages(lang: 'ᜀ', en: 'Alibata'),
  Languages(lang: '아', en: 'Hangul'),
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
          }
        },
        child: GridTile(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Text(
                (languages[index].lang),
                style: const TextStyle(
                  color: Colors.pink,
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
