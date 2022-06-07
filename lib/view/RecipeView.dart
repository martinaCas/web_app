import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/controller/Recipe.dart';
import 'package:web_app/view/AlertView.dart';
import 'package:web_app/view/RecipeListView.dart';
import 'package:web_app/view/UpdateButtonView.dart';
import '../controller/Recipe.dart';
import 'RecipeView.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;
  late bool isPressed = false;

  // BuildContext context = context;

  RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  int getActualId() {
    return recipe.id;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: buildDetailPage(recipe.title),
        ),
      );

//costruzione pagina
  Widget buildDetailPage(String title) {
    //titolo
    final titleText = Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        recipe.title,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

//sottotitolo
    final subTitle = Text(
      recipe.descript,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'Georgia',
        fontSize: 18,
      ),
    );

//stile descrizione
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.3,
      fontSize: 15,
      height: 2,
    );

//lista icone centrali
    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.cyan[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.cyan[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.cyan[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            )
          ]),
        ));

//colonna sinistra
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          // ratings,
          iconList,
          UpdateButtonView(recipe),
        ],
      ),
    );

//immagine principale
    final mainImage = Image.asset(
      recipe.path_image,
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 440,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
