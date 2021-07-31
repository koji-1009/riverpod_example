import 'package:flutter/material.dart';
import 'package:riverpod_example/home.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: FlexColorScheme.light(
        scheme: FlexScheme.indigo,
        appBarElevation: 4,
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.indigo,
        appBarElevation: 4,
      ).toTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
