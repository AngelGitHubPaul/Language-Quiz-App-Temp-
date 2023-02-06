import 'package:flutter/material.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'package:polylingo_app/providers/themes.dart';
import 'package:provider/provider.dart';

class CustomizationPageWrapper extends StatefulWidget {
  const CustomizationPageWrapper({Key? key}) : super(key: key);

  @override
  _CustomizationPageWrapperState createState() =>
      _CustomizationPageWrapperState();
}

class _CustomizationPageWrapperState extends State<CustomizationPageWrapper> {
  @override
  void initState() {
    super.initState();
    final myCurrency = Provider.of<MyCurrency>(context, listen: false);
    myCurrency.loadCounter();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomizationPage();
  }
}

class CustomizationPage extends StatelessWidget {
  const CustomizationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myCurrency = Provider.of<MyCurrency>(context);
    final themesModel = Provider.of<ThemesModel>(context);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Customize"),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Store',
                  ),
                  Tab(
                    text: 'My Themes',
                  ),
                ],
              ),
              actions: [
                Container(
                  padding: const EdgeInsets.only(right: 15, top: 15),
                  child: Text(
                    '${myCurrency.amount} '
                    ' coin',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                GridView.builder(
                  itemCount: themesModel.shopThemesList.length,
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => Card(
                      color: themesModel.shopThemesList[index].color,
                      child: GridTile(
                          child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                            const Padding(padding: EdgeInsets.all(8)),
                            Text(
                              (themesModel.shopThemesList[index].themeName),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(themesModel.shopThemesList[index].price),
                          ])))),
                ),
                GridView.builder(
                  itemCount: themesModel.myThemes.length,
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => Card(
                      color: themesModel.myThemes[index].color,
                      child: GridTile(
                          child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                            const Padding(padding: EdgeInsets.all(8)),
                            Text(
                              (themesModel.myThemes[index].themeName),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ])))),
                ),
              ],
            )));
  }
}
