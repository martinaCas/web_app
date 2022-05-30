import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/view/RecipeListView.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => RecipeListView();
}
