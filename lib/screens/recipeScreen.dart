import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_project/favoriteChangeNotifier.dart';
import 'package:flutter_project/models/recipe_model.dart';
import 'package:flutter_project/widgets/favoriteWidget.dart';
import 'package:provider/provider.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({ Key? key,required this.recipeModel}) :super(key: key);
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Nouvelle recette !",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Text(
                    recipeModel.user,
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                  ),
                ])),
           FavoriteIconWidget(),
            FavoriteTextWidget()
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(Colors.green, Icons.comment, "COMMENT"),
        _buildButtonColumn(Colors.green, Icons.share, "SHARE")
      ]),
    );
    Widget ingredientsSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        recipeModel.ingredients,
        softWrap: true,
      ),
    );
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        recipeModel.description,
        softWrap: true,
      ),
    );
    return ChangeNotifierProvider(
      create: (context)=> FavoriteChangeNotifier(recipeModel.isFavorite, recipeModel.favoriteCount),
      child: Scaffold(
          appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text(
            recipeModel.title,
            textAlign: TextAlign.center,
          )),
          body: ListView(
            children: [
              Hero(
                tag: "imageRecipe" + recipeModel.imageUrl,
                child: CachedNetworkImage(
                  imageUrl:
                      recipeModel.imageUrl,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
              titleSection,
              buttonSection,
              ingredientsSection,
              descriptionSection,
            ],
          )),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(icon, color: color),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        )
      ],
    );
  }
}
