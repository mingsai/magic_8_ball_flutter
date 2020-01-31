import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = new ThemeData(
  primaryColor: const Color(0xFF03A9F4),
  primaryColorDark: const Color(0xFF0288D1),
  primaryColorLight: const Color(0xFFB3E5FC),
  accentColor: const Color(0xFFFFC107),
  dividerColor: const Color(0xFFBDBDBD),
  canvasColor: const Color(0xFFfafafa),
  textSelectionColor: const Color(0xFF757575),
);
void main() {
  _setTargetPlatformForDesktop();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '8-Ball',
      theme: appTheme,
      home: BallPage(),
    ),
  );
}

void _setTargetPlatformForDesktop() {
  // No need to handle macOS, as it has now been added to TargetPlatform.
  if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
      body: new Container(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  void changeBallFace() {
    answer = Random().nextInt(5) + 1;
  }

  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      color: Color(0xFF03A9F4),
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              changeBallFace();
            });
          },
          child: Image.asset('images/ball$answer.png'),
        ),
      ),
    );
  }
}
