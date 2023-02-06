import 'package:flutter/material.dart';
import 'package:polylingo_app/customization_page.dart';
import 'package:polylingo_app/home_page.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'package:polylingo_app/providers/lives.dart';
import 'package:polylingo_app/providers/themes.dart';
import 'package:polylingo_app/review_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => MyCurrency()),
      ChangeNotifierProvider(create: (context) => Lives()),
      ChangeNotifierProvider(create: (context) => ThemesModel()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Polylingo App',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: const Trial(),
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ReviewPage(),
    CustomizationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.article_outlined), label: 'Review'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Customize'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
