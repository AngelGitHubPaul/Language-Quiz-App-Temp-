import 'package:flutter/material.dart';
import 'package:polylingo_app/review_pages/greek_review.dart';
import 'package:polylingo_app/review_pages/hangul_review.dart';
import 'package:polylingo_app/review_pages/hiragana_review.dart';
import 'package:polylingo_app/review_pages/katakana_review.dart';
import 'package:polylingo_app/review_pages/russian_review.dart';
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
  Languages(lang: 'ᜀ', en: 'Alibata'),
  Languages(lang: '아', en: 'Hangul'),
  Languages(lang: 'Бб', en: 'Russian'),
  Languages(lang: 'Α α', en: 'Greek'),
];

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose which to review"),
      ),
      body: GridView.builder(
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
                        return const HiraganaReviewPage();
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
                        return const KatakanaReviewPage();
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
                        return const HangulReviewPage();
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
                        return const RussianReviewPage();
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
                        return const GreekReviewPage();
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
      ),
    );
  }
}
