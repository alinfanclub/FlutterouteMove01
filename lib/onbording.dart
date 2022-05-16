import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:one/main.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Hellow World!',
            body: "this is the first Page",
            image: Image.asset(
              'images/page1.png',
              fit: BoxFit.contain,
              height: 270,
            ),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Hellow World!',
            body: "this is the second Page",
            image: Image.asset(
              'images/page2.png',
              fit: BoxFit.contain,
              height: 250,
            ),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Hellow World!',
            body: "this is the third Page",
            image: Image.asset(
              'images/page3.png',
              fit: BoxFit.contain,
              height: 260,
            ),
            decoration: getPageDecoration()),
      ],
      done: Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage()));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.green),
      curve: Curves.bounceInOut,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 20),
        pageColor: Colors.orange);
  }
}
