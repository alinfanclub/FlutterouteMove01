import 'package:flutter/material.dart';

void main() => runApp(ScreenA());

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScreenA",
      color: Colors.green,
      home: screenB(),
    );
  }
}

class screenB extends StatelessWidget {
  const screenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenB"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 105, 193),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ScreenB",
              style: TextStyle(fontSize: 20, color: Colors.pink),
            )
          ],
        ),
      ),
    );
  }
}
