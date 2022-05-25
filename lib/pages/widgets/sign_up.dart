import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureTextPassword = true;
  final _focusNodeNome = FocusNode();
  final _focusNodeCognome = FocusNode();
  final _focusNodeUsername = FocusNode();
  final _focusNodePassword = FocusNode();

  @override
  void dispose() {
    _focusNodeNome.dispose();
    _focusNodeCognome.dispose();
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
                _signUpButton(),
              ],
            )
          ],
        ),
      );

  Widget _formWidget() => Card(
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
          child: Column(children: [
            _nomeField(),
            const Divider(height: 0),
            _cognomeField(),
            const Divider(height: 0),
            _usernameField(),
            const Divider(height: 0),
            _passwordField(),
          ]),
        ),
      );

//NOME
  Widget _nomeField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: TextField(
          focusNode: _focusNodeNome,
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Nome',
              hintStyle: TextStyle(fontSize: 17.0),
              icon: Icon(
                FontAwesomeIcons.userPen,
                color: Colors.black,
                size: 22.0,
              )),
          onSubmitted: (_) {
            _focusNodeCognome.requestFocus();
          },
        ),
      );

//COGNOME
  Widget _cognomeField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: TextField(
          focusNode: _focusNodeCognome,
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Cognome',
              hintStyle: TextStyle(fontSize: 17.0),
              icon: Icon(
                FontAwesomeIcons.userPen,
                color: Colors.black,
                size: 22.0,
              )),
          onSubmitted: (_) {
            _focusNodeUsername.requestFocus();
          },
        ),
      );

//USERNAME
  Widget _usernameField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: TextField(
          focusNode: _focusNodeUsername,
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
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
        ),
      );

//PASSWORD
  Widget _passwordField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: TextField(
          obscureText: _obscureTextPassword,
          focusNode: _focusNodePassword,
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
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
                setState(() {
                  _obscureTextPassword = !_obscureTextPassword;
                });
              },
              child: Icon(
                _obscureTextPassword
                    ? FontAwesomeIcons.eye
                    : FontAwesomeIcons.eyeSlash,
                size: 15.0,
                color: Colors.black,
              ),
            ),
          ),
          onSubmitted: (_) {
            //TODO: Registrazione
          },
          textInputAction: TextInputAction.go,
        ),
      );

  //BOTTONE
  Widget _signUpButton() => ElevatedButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 48.0),
          child: Text(
            'REGISTRATI',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      );
}
