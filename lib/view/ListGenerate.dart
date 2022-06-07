import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/view/ExRecipeView.dart';
import 'package:web_app/view/UpdateButtonView.dart';

class ListGenerate {
  //late int actualId = UpdateButtonView(this).actualId;

  final List recipeList = List.generate(6, (index) {
    return {
      "id": index,
      "title": "Ricetta numero $index",
      "subtitle": "A delicious recipe."
    };
  });

  List getList() {
    return recipeList;
  }

  void deleteItem() {
    recipeList.remove(0);
    recipeList.length -= 1;
  }
}
