import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/controller/Recipe.dart';
import 'package:responsive_framework/responsive_framework.dart';


import 'AlertView.dart';

class UpdateButtonView extends StatefulWidget {
  Recipe recipe;
  UpdateButtonView(this.recipe, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UpdateButtonViewState();
}

class _UpdateButtonViewState extends State<UpdateButtonView> {
  get recipe => this;

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(children: [
        DefaultTextStyle.merge(
            child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('Modifica ricetta'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      color: Colors.cyan[700]),
                ],
              ),
              Column(
                children: [],
              ),
              Column(
                children: [
                  const Text('Elimina ricetta'),
                  IconButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                          builder: (context) => AlertView(),
                        );
                        Navigator.push(context, route);
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.cyan[700]),
                ],
              )
            ],
          ),
        ))
      ]));
}
