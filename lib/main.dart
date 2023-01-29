import 'package:flutter/material.dart';
import 'package:warmapp_clone/screen_splash.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screensplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
