import 'package:flutter/material.dart';
import 'package:web_app/controller/Recipe.dart';
import 'package:web_app/view/ListGenerate.dart';
import 'package:web_app/view/RecipeListView.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AlertView extends StatefulWidget {
  AlertView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlertViewState();
}

class _AlertViewState extends State<AlertView> {
  get recipe => this;

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: const Text('AlertDialog'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Sei sicuro di voler eliminare?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Sì'),
            onPressed: () {
              ListGenerate().deleteItem();

              Route route = MaterialPageRoute(
                  builder: ((context) => const RecipeListView()));
              Navigator.push(context, route);
            },
          ),
          TextButton(
            child: const Text('No'),
            onPressed: () {
              var confirmDelete = false;
              Route route = MaterialPageRoute(
                  builder: ((context) => const RecipeListView()));
              Navigator.push(context, route);
            },
          ),
        ],
      );
}
