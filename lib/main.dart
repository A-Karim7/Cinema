import 'package:flutter/material.dart';

import 'darkmode.dart';
import 'lightmode.dart';

void main() {
  runApp(const MyApp());
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          centerTitle: true,
          title: const Text(
            'Neomorphisme boutton',
          ),
          bottom: TabBar(
              indicatorColor: Colors.grey[500],
              labelColor: Colors.white,
              dividerColor: Colors.grey[850],
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey[500],
              unselectedLabelStyle: const TextStyle(fontSize: 13),
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.light),
                  text: 'Light Mode',
                ),
                Tab(
                  icon: Icon(Icons.dark_mode),
                  text: 'Dark Modee',
                ),
              ]),
        ),
        body: const TabBarView(children: [LightMode(), DarkMode()]),
      ),
    ));
  }
}
