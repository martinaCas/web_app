import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_app/pages/recipe_view.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  String titolo_ricetta = '';
  final List recipeList = List.generate(10, (index) {
    return {
      "id": index,
      "title": "Ricetta numero $index",
      "subtitle": "Sottotitolo ricetta numero $index"
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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Lista di ricette disponibili'),
        ),
        body: _ricettaUno(),
      );

/*
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: ListView.builder(
                itemCount: recipeList.length,
                itemBuilder: (context, index) => Card(
                      shadowColor: Colors.cyan[700],
                      elevation: 6,
                      margin: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.bowlFood,
                          color: Colors.cyan[700],
                          size: 20.0,
                        ),
                        title: Text(recipeList[index]["title"]),
                        subtitle: Text(recipeList[index]["subtitle"]),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.spoon,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ))),
      );*/

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
      );

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
}
