import 'package:flutter/material.dart';
import 'package:one/screenA.dart';
import 'package:one/screenB.dart';
import 'package:one/screenC.dart';
// import 'screenA.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => screenA(),
        '/b': (context) => screenB(),
        '/c': (context) => screenC(),
      },
      // home: ScreenA(),
    );
  }
}
