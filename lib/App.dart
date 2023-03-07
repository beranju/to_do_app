import 'package:flutter/material.dart';

import 'feature/home_screen.dart';


class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyToDo",
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => const HomeScreen(),
      },
    );
  }
}
