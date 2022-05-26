import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/pages/widgets/recipe.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: buildDetailPage(recipe.title)),
      );

  Widget buildDetailPage(String title) {
    final titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        recipe.title,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    /*Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream. */

    final subTitle = Text(
      recipe.descript,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );

/*
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.stars, color: Colors.green[500]),
        Icon(Icons.stars, color: Colors.green[500]),
        Icon(Icons.stars, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );*/

    /* final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text('170 Reviews',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ))
        ],
      ),
    );*/

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: const EdgeInsets.all(20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            )
          ]),
        ));

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          // ratings,
          iconList,
        ],
      ),
    );

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
