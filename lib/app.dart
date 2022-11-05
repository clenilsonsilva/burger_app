import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/burger_page.dart';
import 'package:flutter_cep/screens/shippin_page.dart';

import 'screens/home.dart';

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
        BurgerPage.tag: (_) => const BurgerPage(),
        ShippingPage.tag: (_) => const ShippingPage(),
      },
    );
  }
}
