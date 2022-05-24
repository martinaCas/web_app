import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _welcomeWidget(),
              _signInButton(context),
            ],
          ),
        ),
      );

  Widget _welcomeWidget() => Expanded(
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.fitWidth,
            ),
            Text('Welcome'),
          ],
        ),
      );

  Widget _signInButton(BuildContext context) => ElevatedButton(
        child: Text('START'),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginPage())),
      );
}
