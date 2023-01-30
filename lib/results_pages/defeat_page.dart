import 'package:flutter/material.dart';

class DefeatPage extends StatefulWidget {
  const DefeatPage({Key? key}) : super(key: key);
  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<DefeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Over'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Expanded(
          child: Text(
            "You Have Run Out of Hearts",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 45.0),
          ),
        ),
      ],
    );
  }
}
