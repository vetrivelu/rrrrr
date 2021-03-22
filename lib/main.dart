import 'package:flutter/material.dart';
import 'package:railbar_marketplace/NavigationRail.dart';
import 'package:provider/provider.dart';
import 'package:railbar_marketplace/States.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<PageState>(
          create: (context) => PageState(),
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final selectedIndex = PageState().pageState;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RailBarWidget(),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  final selectedIndex = PageState().pageState;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RailBarWidget(),
    );
  }
}
