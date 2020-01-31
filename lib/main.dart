import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  _setTargetPlatformForDesktop();
  runApp(
    MaterialApp(
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
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '8-Ball',
      theme: new ThemeData(
        primaryColor: const Color(0xFF388E3C),
        accentColor: const Color(0xFFFF4081),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
