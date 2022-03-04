import 'package:flutter/material.dart';
import 'package:flutter_project/screens/recipeScreen.dart';
import 'package:flutter_project/models/recipe_model.dart';

import '../models/recipe_model.dart';

class thirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      //return
      home: RecipeScreen(recipeModel: RecipeModel(
          "Pizza facile",
          "Par admin",
          "https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg",
          "-Pour la pâte :300 g de farine T45,5 g de levure de boulanger,10 g de sel,20 cl d'eau,5 cl d'huile d'olive \n -Pour la garniture (pour chaque pizza) : de la sauce tomates, une gousse d'ail hachée,5 champignons de paris émincés,5 olives noires,1 filet d'huile d'olive,120 g de billes de mozzarella (ou mozzarella classique)",
          "Faire cuire dans une poêle les lardons et les champignons. préparer la pate, une fois la pâte prête, étalez là et versez la sauce tomate, ajouter les lardons et les champignons, puis mettez la au four coucou",
          false,
          50
      )),
    );
  }
}
