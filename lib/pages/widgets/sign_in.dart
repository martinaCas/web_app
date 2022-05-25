import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_app/pages/list_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureTextPassword = true;

  final _focusNodeUsername = FocusNode();
  final _focusNodePassword = FocusNode();

  @override
  void dispose() {
    _focusNodeUsername.dispose();
    _focusNodePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _formWidget(),
              _signInButton(),
            ],
          ),
        ],
      ));

//FORM
  Widget _formWidget() => Card(
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
          //width: 300.0,
          child: Column(children: [
            _usernameField(),
            const Divider(height: 0),
            _passwordField(),
          ]),
        ),
      );

//USERNAME
  Widget _usernameField() => Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24.0,
      ),
      child: TextField(
        focusNode: _focusNodeUsername,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Username',
            hintStyle: TextStyle(fontSize: 17.0),
            icon: Icon(
              FontAwesomeIcons.userTag,
              color: Colors.black,
              size: 22.0,
            )),
        onSubmitted: (_) {
          _focusNodePassword.requestFocus();
        },
      ));

//PASSWORD
  Widget _passwordField() => Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24.0,
      ),
      child: TextField(
        focusNode: _focusNodePassword,
        obscureText: _obscureTextPassword,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Password',
          hintStyle: const TextStyle(fontSize: 17.0),
          icon: const Icon(
            FontAwesomeIcons.lock,
            color: Colors.black,
            size: 22.0,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  _obscureTextPassword = !_obscureTextPassword;
                },
              );
            },
            child: Icon(
              _obscureTextPassword
                  ? FontAwesomeIcons.eyeSlash
                  : FontAwesomeIcons.eye,
              size: 15.0,
              color: Colors.black,
            ),
          ),
        ),
        onSubmitted: (_) {
          //TODO: Login
        },
        textInputAction: TextInputAction.go,
      ));

//BOTTONE
  Widget _signInButton() => ElevatedButton(
        onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ListViewClass())),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 48.0),
          child: Text(
            'ACCEDI',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      );
}
