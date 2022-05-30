import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/view/SignUpView.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) => SignUpView();
}
