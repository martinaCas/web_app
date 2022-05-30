import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../controller/SignInController.dart';
import '../controller/SignUpController.dart';
import '../misc/bubble_indicator_painter.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late PageController _pageController;

  Color signInColor = Colors.black;
  Color signUpColor = Colors.white;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: Container(
            padding: EdgeInsets.all(150.0),
            child: Column(
              children: [
                //_loginWidget(),
                _selectorWidget(),
                _pageViewWidget(),
              ],
            )),
      ));

  /*Widget _loginWidget() => Container(
      padding: EdgeInsets.all(5.0),
      child: const Image(
        image: AssetImage('assets/images/welcome.png'),
        fit: BoxFit.cover,
      ));*/

  Widget _selectorWidget() => Container(
        padding: const EdgeInsets.all(8.0),
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.cyan[700],
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: CustomPaint(
            painter: BubbleIndicatorPainter(pageController: _pageController),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () => _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate),
                    child: Text(
                      'Accedi',
                      style: TextStyle(color: signInColor, fontSize: 21.0),
                    )),
                TextButton(
                    onPressed: () => _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate),
                    child: Text('Registrati',
                        style: TextStyle(color: signUpColor, fontSize: 21.0))),
              ],
            )),
      );

  Widget _pageViewWidget() => Expanded(
          child: PageView(
        onPageChanged: (index) {
          setState(() {
            signInColor = index == 0 ? Colors.black : Colors.white;
            signUpColor = index == 1 ? Colors.black : Colors.white;
          });
        },
        controller: _pageController,
        children: const [
          SignIn(),
          SignUp(),
        ],
      ));
}
