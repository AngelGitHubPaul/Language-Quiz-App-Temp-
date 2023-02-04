import 'package:flutter/material.dart';
import 'package:polylingo_app/providers/currency.dart';
import 'package:provider/provider.dart';

class CustomizationPage extends StatelessWidget {
  const CustomizationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myCurrency = Provider.of<MyCurrency>(context);
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
                Center(
                    child: GridView.extent(
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 200.0,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child:
                          const Text('First', style: TextStyle(fontSize: 20)),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child:
                          const Text('Second', style: TextStyle(fontSize: 20)),
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child:
                          const Text('Third', style: TextStyle(fontSize: 20)),
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Four', style: TextStyle(fontSize: 20)),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child:
                          const Text('Fifth', style: TextStyle(fontSize: 20)),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Six', style: TextStyle(fontSize: 20)),
                      color: Colors.blue,
                    ),
                  ],
                )),
                const Center(
                  child: Text('My Themes'),
                ),
              ],
            )));
  }
}
