import 'package:flutter/material.dart';

import 'screens/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamburgueria',
      theme: ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        cardColor: Colors.white,
        bottomAppBarColor: Colors.white,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      ),
      home: const HomePage(),
      routes: {
        HomePage.tag: (_) => const HomePage(),

      },
    );
  }
}
