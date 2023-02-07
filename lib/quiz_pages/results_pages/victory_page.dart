import 'package:flutter/material.dart';
import 'package:polylingo_app/main.dart';
import 'package:provider/provider.dart';

import '../../providers/lives.dart';
import '../../providers/themes.dart';

class VictoryPage extends StatefulWidget {
  const VictoryPage({Key? key}) : super(key: key);
  @override
  _VictoryPageState createState() => _VictoryPageState();
}

class _VictoryPageState extends State<VictoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Victory!'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Provider.of<Lives>(context, listen: false).resetLives();
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const MyApp();
                },
              ),
            );
          },
          icon: const Icon(Icons.home),
        ),
      ),
      body: const DefeatScreen(),
    );
  }
}

class DefeatScreen extends StatelessWidget {
  const DefeatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int mistakes = 3 - Provider.of<Lives>(context).lives;
    final theme = Provider.of<ThemesModel>(context).selectedThemes[0].color;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Good Job! You Have Answered All of the Questions!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: theme, fontSize: 45.0),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  mistakes == 0
                      ? "You have made no mistakes. Keep up the good work!"
                      : mistakes == 1
                          ? "You have made $mistakes mistake. Keep up the good work!"
                          : "You have made $mistakes mistakes. Keep up the good work!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30.0),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  mistakes == 0
                      ? "+15 Gold"
                      : mistakes == 1
                          ? "+13 Gold"
                          : "+10 Gold",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: theme, fontSize: 30.0),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const MyApp();
                  },
                ),
              );
            },
            child: Container(
              child: const Text('Go Home'),
              padding: const EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
    );
  }
}
