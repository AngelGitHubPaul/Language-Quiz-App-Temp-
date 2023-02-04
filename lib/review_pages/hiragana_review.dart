import 'package:flutter/material.dart';

class Hiragana {
  final String jp;
  final String en;

  Hiragana({required this.jp, required this.en});
}

final List<Hiragana> hiragana = [
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
  Hiragana(jp: '', en: ''),
  Hiragana(jp: 'ゆ', en: 'yu'),
  Hiragana(jp: '', en: ''),
  Hiragana(jp: 'よ', en: 'yo'),
  Hiragana(jp: 'ら', en: 'ra'),
  Hiragana(jp: 'り', en: 'ri'),
  Hiragana(jp: 'る', en: 'ru'),
  Hiragana(jp: 'れ', en: 're'),
  Hiragana(jp: 'ろ', en: 'ro'),
  Hiragana(jp: 'わ', en: 'wa'),
  Hiragana(jp: '', en: ''),
  Hiragana(jp: 'を', en: 'wo'),
  Hiragana(jp: '', en: ''),
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
  Hiragana(jp: 'ぼ', en: 'pu'),
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

class HiraganaReviewPage extends StatelessWidget {
  const HiraganaReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hiragana'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        itemCount: hiragana.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) => Card(
            child: GridTile(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                (hiragana[index].jp),
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                ),
              ),
              Text(hiragana[index].en),
            ])))),
      ),
    );
  }
}
