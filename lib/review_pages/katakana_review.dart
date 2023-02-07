import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themes.dart';

class Katakana {
  final String jp;
  final String en;

  Katakana({required this.jp, required this.en});
}

final List<Katakana> katakana = [
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
  Katakana(jp: '', en: ''),
  Katakana(jp: 'ユ', en: 'yu'),
  Katakana(jp: '', en: ''),
  Katakana(jp: 'ヨ', en: 'yo'),
  Katakana(jp: 'ラ', en: 'ra'),
  Katakana(jp: 'リ', en: 'ri'),
  Katakana(jp: 'ル', en: 'ru'),
  Katakana(jp: 'レ', en: 're'),
  Katakana(jp: 'ロ', en: 'ro'),
  Katakana(jp: 'ワ', en: 'wa'),
  Katakana(jp: '', en: ''),
  Katakana(jp: 'ヲ', en: 'wo'),
  Katakana(jp: '', en: ''),
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

class KatakanaReviewPage extends StatelessWidget {
  const KatakanaReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katakana'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        itemCount: katakana.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) => Card(
            child: GridTile(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                (katakana[index].jp),
                style: TextStyle(
                  color: theme,
                  fontSize: 20.0,
                ),
              ),
              Text(katakana[index].en),
            ])))),
      ),
    );
  }
}
