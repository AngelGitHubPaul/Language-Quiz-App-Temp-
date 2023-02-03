import 'package:flutter/material.dart';

List<String> greek = [
  "Α α",
  "Β β",
  "Γ γ",
  "Δ δ",
  "Ε ε",
  "Ζ ζ",
  "Η η",
  "Θ θ",
  "Ι ι",
  "Κ κ",
  "Λ λ",
  "Μ μ",
  "Ν ν",
  "Ξ ξ",
  "Ο ο",
  "Π π",
  "Ρ ρ",
  "Σ σ/ς",
  "Τ τ",
  "Υ υ",
  "Φ φ",
  "Χ χ",
  "Ψ ψ",
  "Ω ω",
];
List<String> alphabet = [
  "a",
  "b",
  "g",
  "d",
  "e",
  "z",
  "i",
  "th",
  "i",
  "k",
  "l",
  "m",
  "n",
  "x",
  "o",
  "p",
  "r",
  "s",
  "t",
  "u",
  "f",
  "x",
  "ps",
  "o",
];

class GreekReviewPage extends StatelessWidget {
  const GreekReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greek'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        itemCount: greek.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) => Card(
            child: GridTile(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                (greek[index]),
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                ),
              ),
              Text(alphabet[index]),
            ])))),
      ),
    );
  }
}
