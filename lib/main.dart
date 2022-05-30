import 'package:flutter/material.dart';
import 'package:web_app/view/WelcomeView.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'App',
        home: WelcomePage(),
        debugShowCheckedModeBanner: false,
      );
}
