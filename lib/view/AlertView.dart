import 'package:flutter/material.dart';

Future<void> _showMyDialog() async {
  var context;
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
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
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
