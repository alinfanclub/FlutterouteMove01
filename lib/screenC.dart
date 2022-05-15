import 'package:flutter/material.dart';

void main() => runApp(ScreenA());

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScreenA",
      color: Colors.green,
      home: screenC(),
    );
  }
}

class screenC extends StatelessWidget {
  const screenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenC"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 236, 42),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ScreenC",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            )
          ],
        ),
      ),
    );
  }
}
