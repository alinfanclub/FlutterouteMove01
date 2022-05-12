import 'package:flutter/material.dart';

void main() => runApp(ScreenA());

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScreenA",
      color: Colors.green,
      home: screenA(),
    );
  }
}

class screenA extends StatelessWidget {
  const screenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenA"),
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: Text(
                'GotoScreenB',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/c');
                ;
              },
              child: Text(
                'GotoScreenC',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
