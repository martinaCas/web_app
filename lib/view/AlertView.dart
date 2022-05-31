import 'package:flutter/material.dart';
import 'package:web_app/view/RecipeListView.dart';

class AlertView extends StatefulWidget {
  const AlertView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlertViewState();
}

class _AlertViewState extends State<AlertView> {
  // final bool _confirmDelete = false;
  @override
  Widget build(BuildContext context) => _showMyDialog(context);
}

Widget _showMyDialog(BuildContext context) => AlertDialog(
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
            var confirmDelete = true;
            Route route = MaterialPageRoute(
                builder: ((context) =>
                    RecipeListView(confirmDelete: confirmDelete)));
            Navigator.push(context, route);
          },
        ),
        TextButton(
          child: const Text('No'),
          onPressed: () {
            var confirmDelete = false;
            Route route = MaterialPageRoute(
                builder: ((context) =>
                    RecipeListView(confirmDelete: confirmDelete)));
            Navigator.push(context, route);
          },
        ),
      ],
    );
