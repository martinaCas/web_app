import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 150,
          ),
          child: Column(
            children: [
              _welcomeWidget(),
              _signInButton(context),
            ],
          ),
        ),
      );

  Widget _welcomeWidget() => Stack(
        children: [
          Column(
            children: const [
              Image(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.fill,
              ),
            ],
          ),
        ],
      );

  Widget _signInButton(BuildContext context) => ElevatedButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage())),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 70.0),
        child: Text(
          'START',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ));
}
