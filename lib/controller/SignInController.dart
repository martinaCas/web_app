import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/view/SignInView.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) => SignInView();
}
