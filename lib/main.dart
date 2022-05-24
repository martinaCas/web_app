import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/pages/welcome_page.dart';

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


// ignore_for_file: camel_case_types, library_private_types_in_public_api, use_key_in_widget_constructors
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const WebApp());

class WebApp extends StatelessWidget {
  const WebApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Web_App_Screen(),
      },
    );
  }
}

//classe per schermo iniziale
class Web_App_Screen extends StatelessWidget {
  const Web_App_Screen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 500,
          child: Card(
            child: Web_App_Form(),
          ),
        ),
      ),
    );
  }
}

//classe per il form
class Web_App_Form extends StatefulWidget {
  const Web_App_Form();

  @override
  _Web_App_Form_State createState() => _Web_App_Form_State();
}

class _Web_App_Form_State extends State<Web_App_Form> {
  final _nomeController = TextEditingController();
  final _cognomeController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Sign up',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _nomeController,
            decoration: const InputDecoration(
                labelText: 'Enter name', hintText: 'name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _cognomeController,
            decoration: const InputDecoration(
                labelText: 'Enter surname', hintText: 'surname'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(
                labelText: 'Enter username', hintText: 'username'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            /* validator: (text) => {
              if(text == null || text.isEmpty){
                return 'Non può essere vuoto.';
              }
              if(text.length<4){
                return 'Troppo corto';
              }
              return null;
            },*/
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Enter password', hintText: 'password'),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.white;
            }),
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.cyan[600];
            }),
          ),
          onPressed: () {},
          child: const Text(
            'Sign up',
          ),
        ),
      ],
    ));
  }
}
*/