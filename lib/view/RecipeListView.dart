import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/Recipe.dart';
import 'RecipeView.dart';

class RecipeListView extends StatefulWidget {
  const RecipeListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecipeListViewState();
}

class _RecipeListViewState extends State<RecipeListView> {
  String titolo_ricetta = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Lista di ricette disponibili'),
        ),
        body: _listRicette(),
      );

//Lista
  final List recipeList = List.generate(6, (index) {
    return {
      "id": index,
      "title": "Ricetta numero $index",
      "subtitle": "A delicious recipe."
    };
  });

//list builder
  Widget _listRicette() => ListView.builder(
      itemCount: recipeList.length,
      itemBuilder: (context, index) {
        return Card(
          shadowColor: Colors.cyan[700],
          elevation: 6,
          margin: const EdgeInsets.only(left: 250.0, top: 16.0, right: 250.0),
          child: ListTile(
            leading: _dinnerIcon(),
            title: Text(recipeList[index]["title"]),
            subtitle: Text(recipeList[index]["subtitle"]),
            trailing: IconButton(
              onPressed: () {
                Recipe recipe;
                Route route;

                recipe = _recipeBuilder(index);
                route = MaterialPageRoute(
                  builder: (context) => RecipeDetails(recipe: recipe),
                );
                Navigator.push(context, route);
              },
              icon: _zoomIn(),
            ),
          ),
        );
      });

//lista ricette disponibili
  Widget _recipeList() => Scaffold(
        body: Container(
          child: _listRicette(),
        ),
      );

//icone dinner
  Widget _dinnerIcon() => const Icon(
        Icons.dinner_dining,
        color: Colors.black,
        size: 20.0,
      );

//icona zoom in
  Widget _zoomIn() => const Icon(
        Icons.zoom_in,
        color: Colors.black,
        size: 20.0,
      );

//Recipe builder
  Recipe _recipeBuilder(index) {
    String title = '';
    String descript = '';
    String path_image = '';
    Recipe recipe = Recipe(title, descript, path_image);

    switch (index) {
      case 0:
        {
          title = 'Strawberry Pavlova';
          descript =
              "50 gr di albumi (circa 2 albumi)\n50 gr di zucchero semolato\n1 cucchiaino di aceto bianco\n200 ml di panna da montare\n15 gr di zucchero a velo\n250 gr di fragole\n10 foglioline di basilico";
          path_image = 'assets/images/pavlova.jpg';

          recipe = Recipe(title, descript, path_image);
        }
        break;
      case 1:
        {
          title = 'Apple Pie';
          descript =
              "Burro freddo di frigorifero 225 g\nFarina 00 450 g\nSale 1 pizzico\nAcqua ghiacciata 100 g\nMele renette (già pulite) 1 kg\nLimoni 1\nZucchero 100 g\nCannella in polvere 1 cucchiaino\nNoce moscata da grattugiare q.b.\nAcqua 2 cucchiai";
          path_image = 'assets/images/applePie.jpg';
          recipe = Recipe(title, descript, path_image);
        }
        break;
      case 2:
        {
          title = 'Cookies';
          descript =
              "Farina 00 195 g\nBurro (morbido) 100 g\nBicarbonato 1 pizzico\nUova (circa 1 medio, a temperatura ambiente) 55 g\nZucchero di canna 100 g\nZucchero 100 g\nGocce di cioccolato fondente 200 g\nSale fino 1 pizzico";
          path_image = 'assets/images/cookies.jpg';
          recipe = Recipe(title, descript, path_image);
        }
        break;
      case 3:
        {
          title = 'Cheesecake';
          descript =
              "250 g di biscotti tipo digestive\n125 g di burro\n750 g di formaggio fresco tipo Philadelphia\n170 ml di panna fresca\n80 g di zucchero semolato";
          path_image = 'assets/images/cheesecake.jpg';
          recipe = Recipe(title, descript, path_image);
        }
        break;
      case 4:
        {
          title = 'Tiramisu';
          descript =
              "Mascarpone 750 g\nUova (freschissime, circa 5 medie) 260 g\nSavoiardi 250 g\nZucchero 120 g\nCaffè (della moka, zuccherato a piacere) 300 g\nCacao amaro in polvere q.b.";
          path_image = 'assets/images/tiramisu.jpg';
          recipe = Recipe(title, descript, path_image);
        }
        break;
      case 5:
        {
          title = 'Torta di Mirtilli';
          descript =
              "400 g di mirtilli\n1 uovo\n170 g di zucchero\n180 g di farina più 1 cucchiaino\n80 g di burro morbido\n125 ml di latte\n1 limone (scorza grattugiata)\n1 pizzico di sale\n1 cucchiaino pieno di lievito per dolci";
          path_image = 'assets/images/torta_mirtilli.jpeg';
          recipe = Recipe(title, descript, path_image);
        }
        break;
    }
    return recipe;
  }
}
