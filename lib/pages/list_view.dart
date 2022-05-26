import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_app/pages/recipe_details.dart';
import 'package:web_app/pages/recipe_view.dart';
import 'package:web_app/pages/widgets/recipe.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  String titolo_ricetta = '';
  final List recipeList = List.generate(6, (index) {
    return {
      "id": index,
      "title": "Ricetta numero $index",
      "subtitle": "A delicious recipe."
    };
  });

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Lista di ricette disponibili'),
        ),
        body: _listRicette(),
      );

  Widget _recipeList() => Scaffold(
        body: Container(
          child: _listRicette(),
        ),
      );

  Widget _listRicette() => ListView.builder(
      itemCount: recipeList.length,
      itemBuilder: (context, index) {
        return Card(
            shadowColor: Colors.cyan[700],
            elevation: 6,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: const Icon(
                Icons.dinner_dining,
                color: Colors.black,
                size: 20.0,
              ),
              title: Text(recipeList[index]["title"]),
              subtitle: Text(recipeList[index]["subtitle"]),
              trailing: IconButton(
                onPressed: () {
                  String title, descript, path_image;
                  Recipe recipe;
                  Route route;
                  if (index == 0) {
                    title = 'Strawberry Pavlova';
                    descript =
                        "50 gr di albumi (circa 2 albumi)\n50 gr di zucchero semolato\n1 cucchiaino di aceto bianco\n200 ml di panna da montare\n15 gr di zucchero a velo\n250 gr di fragole\n10 foglioline di basilico";
                    path_image = 'assets/images/pavlova.jpg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                  if (index == 1) {
                    title = 'Apple Pie';
                    descript =
                        "Burro freddo di frigorifero 225 g\nFarina 00 450 g\nSale 1 pizzico\nAcqua ghiacciata 100 g\nMele renette (già pulite) 1 kg\nLimoni 1\nZucchero 100 g\nCannella in polvere 1 cucchiaino\nNoce moscata da grattugiare q.b.\nAcqua 2 cucchiai";
                    path_image = 'assets/images/applePie.jpg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                  if (index == 2) {
                    title = 'Cookies';
                    descript =
                        "Farina 00 195 g\nBurro (morbido) 100 g\nBicarbonato 1 pizzico\nUova (circa 1 medio, a temperatura ambiente) 55 g\nZucchero di canna 100 g\nZucchero 100 g\nGocce di cioccolato fondente 200 g\nSale fino 1 pizzico";
                    path_image = 'assets/images/cookies.jpg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                  if (index == 3) {
                    title = 'Cheesecake';
                    descript =
                        "250 g di biscotti tipo digestive\n125 g di burro\n750 g di formaggio fresco tipo Philadelphia\n170 ml di panna fresca\n80 g di zucchero semolato";
                    path_image = 'assets/images/cheesecake.jpg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                  if (index == 4) {
                    title = 'Tiramisu';
                    descript =
                        "Mascarpone 750 g\nUova (freschissime, circa 5 medie) 260 g\nSavoiardi 250 g\nZucchero 120 g\nCaffè (della moka, zuccherato a piacere) 300 g\nCacao amaro in polvere q.b.";
                    path_image = 'assets/images/tiramisu.jpg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                  if (index == 5) {
                    title = 'Torta di Mirtilli';
                    descript =
                        "400 g di mirtilli\n1 uovo\n170 g di zucchero\n180 g di farina più 1 cucchiaino\n80 g di burro morbido\n125 ml di latte\n1 limone (scorza grattugiata)\n1 pizzico di sale\n1 cucchiaino pieno di lievito per dolci";
                    path_image = 'assets/images/torta_mirtilli.jpeg';
                    recipe = Recipe(title, descript, path_image);

                    route = MaterialPageRoute(
                      builder: (context) => RecipeDetails(recipe: recipe),
                    );
                    Navigator.push(context, route);
                  }
                },
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.black,
                ),
              ),
            ));
      });
}


/*
  Widget _ricettaUno() => Scaffold(
        //backgroundColor: Colors.cyan[700],
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              color: Color.fromARGB(255, 76, 174, 185),
              child: ListTile(
                leading: const Icon(
                  FontAwesomeIcons.bowlFood,
                  color: Colors.black,
                ),
                title: const Text(
                  'Strawberry Pavlova',
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                ),
                trailing: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RecipeView())),
                  icon: const Icon(
                    FontAwesomeIcons.spoon,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Text(
                  'A delicious recipe',
                  style: TextStyle(color: Colors.black),
                ),
                selected: true,
                onTap: () {
                  setState(() {
                    titolo_ricetta = 'Strawberry Pavlova';
                  });
                },
              ),
            ),
          )
        ]),
      );*/

  /*Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: Colors.cyan[700],
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        height: 50,
        child: const Text(
          'Ricetta 1',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      );*/
/*
  Widget _ricettaDue() => Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          color: Colors.cyan[700],
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      height: 50,
      child: const Text(
        'Ricetta 2',
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.white,
        ),
      ));

  /* Widget _ricettaTre() => Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.cyan[700],
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      height: 50,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              icon: Icon(
            FontAwesomeIcons.bowlFood,
            color: Colors.black,
          )),
        ),
      ));*/

  Widget _ricettaQuattro() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              FontAwesomeIcons.bowlFood,
              color: Colors.black,
            ),
          ),
          //Text('Ricetta quattro')),
        ],
      );
  /*Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.cyan[700],
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      height: 50,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              icon: Icon(
            FontAwesomeIcons.bowlFood,
            color: Colors.black,
          )),
        ),
      ));*/*/
      
/*
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 100.0),
        children: <Widget>[
          Center(child: _ricettaUno()),
          const Divider(height: 5),
          //Center(child: _ricettaDue()),
          //const Divider(height: 5),
          //Center(child: _ricettaTre()),
          // const Divider(height: 5),
          //Center(child: _ricettaQuattro()),
        ],
      );*/
