import 'package:flutter/material.dart';
import 'package:polylingo_app/main.dart';
import 'package:provider/provider.dart';

import '../../providers/lives.dart';

class DefeatPage extends StatefulWidget {
  const DefeatPage({Key? key}) : super(key: key);
  @override
  _DefeatPageState createState() => _DefeatPageState();
}

class _DefeatPageState extends State<DefeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Over'),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Expanded(
                flex: 2,
                child: Text(
                  "You Have Run Out of Hearts",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 45.0),
                ),
              ),
            ],
          ),
          ElevatedButton(
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
