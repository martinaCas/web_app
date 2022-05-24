import 'package:flutter/material.dart';
import 'package:web_app/app.dart';
import 'package:web_app/misc/bubble_indicator_painter.dart';
import 'package:web_app/pages/widgets/sign_in.dart';
import 'package:web_app/pages/widgets/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: Container(
            child: Column(
          children: [
            _loginWidget(),
            _selectorWidget(),
            _pageViewWidget(),
          ],
        )),
      );

  Widget _loginWidget() => const Image(
        image: AssetImage('assets/images/welcome.png'),
        fit: BoxFit.fitWidth,
      );

  Widget _selectorWidget() => Container(
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
                      style: TextStyle(color: signInColor),
                    )),
                TextButton(
                    onPressed: () => _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate),
                    child: Text('Registrati',
                        style: TextStyle(color: signUpColor))),
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
