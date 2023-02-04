import 'package:flutter/material.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'package:provider/provider.dart';

class CustomizationPage extends StatelessWidget {
  const CustomizationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<MyCurrency>(
          builder: (context, myCurrency, child) {
            return Text("Current Currency: ${myCurrency.amount}");
          },
        ),
      ),
    );
  }
}
