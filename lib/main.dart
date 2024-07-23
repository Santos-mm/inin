import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<dynamic> pages = [
    "You're usually avery practical and fdown-to-Earth person,but today you may be more inclined than usual toward mysticism.Sprititual matter seem extremely appealing and you vould find yourself gravitaing toward meaphysical bookstores or seeking discussios with people who are well versed in such matters." +
        '\n' +
        "You also find your imagination working overtime.Indulge in a few flights of fancy,Gemini .We all ed to esape from time time!",
    "You also find your imagination working overtime.Indulge in a few flights of fancy,Gemini .We all ed to esape from time time!",
    'Loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm'
  ];
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('Gemini')),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Yesterday',
                  ),
                  Tab(
                    text: 'Today',
                  ),
                  Tab(
                    text: 'Tomorrow',
                  )
                ],
              ),
            ),
            body: Container(
              child: TabBarView(
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Text(pages[0])),
                  Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.amber,
                      child: Text(pages[1])),
                  Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.green,
                      child: Text(pages[2])),
                ],
              ),
            )),
      ),
    );
  }
}
