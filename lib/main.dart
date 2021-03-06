import 'package:flutter/material.dart';
import 'source2/messages.dart';
import 'halaman/splashscreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Messages.title,
      home: SplashScreen(),
    );
  }
}
