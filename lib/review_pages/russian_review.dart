import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themes.dart';

List<String> russian = [
  "Аа",
  "Бб",
  "Вв",
  "Гг",
  "Дд",
  "Ее",
  "Ёё",
  "Жж",
  "Зз",
  "Ии",
  "Йй",
  "Кк",
  "Лл",
  "Мм",
  "Нн",
  "Оо",
  "Пп",
  "Рр",
  "Сс",
  "Тт",
  "Уу",
  "Фф",
  "Хх",
  "Цц",
  "Чч",
  "Шш",
  "Щщ",
  "Ээ",
  "Юю",
  "Яя",
];
List<String> alphabet = [
  "a",
  "b",
  "v",
  "g",
  "d",
  "ye",
  "yo",
  "zh",
  "z",
  "i",
  "y",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "r",
  "s",
  "t",
  "u",
  "f",
  "kh",
  "ts",
  "ch",
  "sh",
  "shch",
  "e",
  "yu",
  "ya",
];

class RussianReviewPage extends StatelessWidget {
  const RussianReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Russian'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        itemCount: russian.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) => Card(
            child: GridTile(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                (russian[index]),
                style: TextStyle(
                  color: theme,
                  fontSize: 20.0,
                ),
              ),
              Text(alphabet[index]),
            ])))),
      ),
    );
  }
}
