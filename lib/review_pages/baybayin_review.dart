import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themes.dart';

class Baybayin {
  final String bay;
  final String tag1;
  final String tag2;

  Baybayin({required this.bay, required this.tag1, required this.tag2});
}

final List<Baybayin> baybayin = [
  Baybayin(bay: '', tag1: '', tag2: ''),
  Baybayin(bay: 'ᜀ', tag1: 'a', tag2: ''),
  Baybayin(bay: 'ᜁ', tag1: 'e', tag2: '/i'),
  Baybayin(bay: 'ᜂ', tag1: 'o', tag2: '/u'),
  Baybayin(bay: 'ᜊ᜔', tag1: 'b', tag2: ''),
  Baybayin(bay: 'ᜊ', tag1: 'ba', tag2: ''),
  Baybayin(bay: 'ᜊᜒ', tag1: 'be', tag2: '/bi'),
  Baybayin(bay: 'ᜊᜓ', tag1: 'bo', tag2: '/bu'),
  Baybayin(bay: 'ᜃ᜔', tag1: 'k', tag2: ''),
  Baybayin(bay: 'ᜃ', tag1: 'ka', tag2: ''),
  Baybayin(bay: 'ᜃᜒ', tag1: 'ke', tag2: '/ki'),
  Baybayin(bay: 'ᜃᜓ', tag1: 'ko', tag2: '/ku'),
  Baybayin(bay: 'ᜇ᜔', tag1: 'd', tag2: ''),
  Baybayin(bay: 'ᜇ', tag1: 'da', tag2: ''),
  Baybayin(bay: 'ᜇᜒ', tag1: 'de', tag2: '/di'),
  Baybayin(bay: 'ᜇᜓ', tag1: 'do', tag2: '/du'),
  Baybayin(bay: 'ᜄ᜔', tag1: 'g', tag2: ''),
  Baybayin(bay: 'ᜄ', tag1: 'ga', tag2: ''),
  Baybayin(bay: 'ᜄᜒ', tag1: 'ge', tag2: '/gi'),
  Baybayin(bay: 'ᜄᜓ', tag1: 'go', tag2: '/gu'),
  Baybayin(bay: 'ᜑ᜔', tag1: 'h', tag2: ''),
  Baybayin(bay: 'ᜑ', tag1: 'ha', tag2: ''),
  Baybayin(bay: 'ᜑᜒ', tag1: 'he', tag2: '/hi'),
  Baybayin(bay: 'ᜑᜓ', tag1: 'ho', tag2: '/hu'),
  Baybayin(bay: 'ᜎ᜔', tag1: 'l', tag2: ''),
  Baybayin(bay: 'ᜎ', tag1: 'la', tag2: ''),
  Baybayin(bay: 'ᜎᜒ', tag1: 'le', tag2: '/li'),
  Baybayin(bay: 'ᜎᜓ', tag1: 'lo', tag2: '/lu'),
  Baybayin(bay: 'ᜋ᜔', tag1: 'm', tag2: ''),
  Baybayin(bay: 'ᜋ', tag1: 'ma', tag2: ''),
  Baybayin(bay: 'ᜋᜒ', tag1: 'me', tag2: '/mi'),
  Baybayin(bay: 'ᜋᜓ', tag1: 'mo', tag2: '/mu'),
  Baybayin(bay: 'ᜈ᜔', tag1: 'n', tag2: ''),
  Baybayin(bay: 'ᜈ', tag1: 'na', tag2: ''),
  Baybayin(bay: 'ᜈᜒ', tag1: 'ne', tag2: '/ni'),
  Baybayin(bay: 'ᜈᜓ', tag1: 'no', tag2: '/nu'),
  Baybayin(bay: 'ᜅ᜔', tag1: 'ng', tag2: ''),
  Baybayin(bay: 'ᜅ', tag1: 'nga', tag2: ''),
  Baybayin(bay: 'ᜅᜒ', tag1: 'nge', tag2: '/ngi'),
  Baybayin(bay: 'ᜅᜓ', tag1: 'ngo', tag2: '/ngu'),
  Baybayin(bay: 'ᜉ᜔', tag1: 'p', tag2: ''),
  Baybayin(bay: 'ᜉ', tag1: 'pa', tag2: ''),
  Baybayin(bay: 'ᜉᜒ', tag1: 'pe', tag2: '/pi'),
  Baybayin(bay: 'ᜉᜓ', tag1: 'po', tag2: '/pu'),
  Baybayin(bay: 'ᜐ᜔', tag1: 's', tag2: ''),
  Baybayin(bay: 'ᜐ', tag1: 'sa', tag2: ''),
  Baybayin(bay: 'ᜐᜒ', tag1: 'se', tag2: '/si'),
  Baybayin(bay: 'ᜐᜓ', tag1: 'so', tag2: '/su'),
  Baybayin(bay: 'ᜆ᜔', tag1: 't', tag2: ''),
  Baybayin(bay: 'ᜆ', tag1: 'ta', tag2: ''),
  Baybayin(bay: 'ᜆᜒ', tag1: 'te', tag2: '/ti'),
  Baybayin(bay: 'ᜆᜓ', tag1: 'to', tag2: '/tu'),
  Baybayin(bay: 'ᜏ᜔', tag1: 'w', tag2: ''),
  Baybayin(bay: 'ᜏ', tag1: 'wa', tag2: ''),
  Baybayin(bay: 'ᜏᜒ', tag1: 'we', tag2: '/wi'),
  Baybayin(bay: 'ᜏᜓ', tag1: 'wo', tag2: '/wu'),
  Baybayin(bay: 'ᜌ᜔', tag1: 'y', tag2: ''),
  Baybayin(bay: 'ᜌ', tag1: 'ya', tag2: ''),
  Baybayin(bay: 'ᜌᜒ', tag1: 'ye', tag2: '/yi'),
  Baybayin(bay: 'ᜌᜓ', tag1: 'yo', tag2: '/yu'),
];

class BaybayinReviewPage extends StatelessWidget {
  const BaybayinReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baybayin'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        itemCount: baybayin.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) => Card(
            child: GridTile(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                (baybayin[index].bay),
                style: TextStyle(
                  color: theme,
                  fontSize: 20.0,
                ),
              ),
              Text(baybayin[index].tag1 + baybayin[index].tag2),
            ])))),
      ),
    );
  }
}
