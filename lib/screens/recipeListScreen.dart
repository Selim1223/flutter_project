import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/models/recipe_model.dart';

class RecipeListScreen extends StatefulWidget{
  @override

  State<StatefulWidget> createState(){
    return RecipeListScreenState();
  }

}

class RecipeListScreenState extends State<RecipeListScreen>{
  final List<RecipeModel> recipes = [
    RecipeModel("Pizza",
        "Par Paul",
        "https://lamallearecettes.files.wordpress.com/2016/04/img_8648.jpg",
        "ingrédients : _Pour la pâte :300 g de farine T45,5 g de levure de boulanger,10 g de sel,20 cl d'eau,5 cl d'huile d'olive \n _Pour la garniture (pour chaque pizza) : de la sauce tomates, une gousse d'ail hachée,5 champignons de paris émincés,5 olives noires,1 filet d'huile d'olive,120 g de billes de mozzarella (ou mozzarella classique)",
        "Faire cuire dans une poêle les lardons et les champignons. préparer la pate, une fois la pâte prête, étalez là et versez la sauce tomate, ajouter les lardons et les champignons, puis mettez la au four",
        false,
        73),
    RecipeModel( "Burger maison",
        "Par Cyril",
        "https://www.adeline-cuisine.fr/wp-content/uploads/2016/11/burger-savoyard-raclette-jambon-fume-maison-recette.jpg",
        "ingrédients : 2 pains burgers,1 steack haché,  2 tranches de fromages, 1 tomate, 1 oignons, 2 feuilles de salades, 4 cornichons, moutarde, ketchup",
        "Découper l'oignon en fines lamelles et la tomate et les cornichons en tranches.Couper le pain à burger en 2, et faire griller ses faces intérieures sur une poêle chaude. Réserver. Mettre les steaks hachés à cuire, et appuyer dessus pour les écraser légèrement. Cuire selon ses goûts (saignant, à point, bien cuit). Retourner les steaks hachés et déposer les tranches de fromage dessus afin qu'il fonde. Attention, si vous voulez un steak haché bien cuit, attendre un peu avant de mettre le fromage, qui risquerait sinon de trop fondre et de couler dans la poêle. Prendre le bas du pain à burger, et étaler un peu de moutarde dessus. Mettre également du ketchup et placer une lamelle d'oignon dessus. Mettre le steak haché cuit dessus, puis une tranche de tomate et des tranches de cornichon. Finir par 2 feuilles de salade propres, et poser le chapeau du pain à burger dessus. Utiliser un pique en bois pour tenir le burger ! ",
        false,
        91),
    RecipeModel("crêpes",
        "Par Léa",
        "https://static.750g.com/images/1200-630/6ceb6d48f71012ab5c09ae0ac5275aa2/photo-crepes.jpg",
        "ingrédients :  250 g de farine, 4 oeufs, 1/2 litre de lait, 1 pincée de sel, 2 cuillères à soupe de sucre, 50g de beurre fondu",
        "Mettez la farine dans un saladier avec le sel et le sucre. Faites un puits au milieu et versez-y les œufs. Commencez à mélanger doucement. Quand le mélange devient épais, ajoutez le lait froid petit à petit. Quand tout le lait est mélangé, la pâte doit être assez fluide. Si elle vous paraît trop épaisse, rajoutez un peu de lait. Ajoutez ensuite le beurre fondu refroidi, mélangez bien. Faites cuire les crêpes dans une poêle chaude (par précaution légèrement huilée si votre poêle à crêpes n'est pas anti-adhésive). Versez une petite louche de pâte dans la poêle, faites un mouvement de rotation pour répartir la pâte sur toute la surface. Posez sur le feu et quand le tour de la crêpe se colore en roux clair, il est temps de la retourner. Laissez cuire environ une minute de ce côté et la crêpe est prête. ",
        false,
        54),
    RecipeModel("fish and chips",
        "Par michael",
        "https://images.radio-canada.ca/v1/alimentation/recette/4x3/fish-chips.jpg",
        "ingrédients : 850 grammes de filets de cabillaud, 220 grammes de farine T45, 2 oeufs, 25 centilitres de bière blonde, sel et poivre",
        "Sécher le poisson sur du papier absorbant. Couper les filets de poisson en deux ou trois selon la taille, saler et poivrer chaque face. Les passer dans la farine des deux côtés. Réserver au frais. Dans un saladier, verser 180 grammes de farine, la bière, bien assaisonner de sel et poivre et fouetter. Ajouter les jaunes d'oeufs (réserver les blancs). Fouetter. Couvrir d'un film alimentaire et réserver 2 heures à température ambiante (comme pour une pâte à crêpes). Préchauffer la friteuse à 170°c. Monter les blancs en neige et les incorporer délicatement dans la pâte en soulevant la pâte avec une maryse. Tremper généreusement les morceaux de poisson dans la pâte et les mettre en friture 5 minutes, en retournant à mi-cuisson pour frire les deux côtés (sans panier, sinon la panure s'y attachera). Retirer le poisson frit avec une écumoire et déposer sur du papier absorbant. Servir avec des frites ou potatoes",
        false,
        127),
    RecipeModel("tarte aux pommes ",
        "Par Cinthia",
        "https://img-3.journaldesfemmes.fr/Am61xrbvr588ROIORqYhSkhQp8A=/750x500/smart/570815b9f5db46eda4d665288a544953/recipe-jdf/10020448.jpg",
        "ingrédients : 1 rouleau de pâte sablée, 3 pommes, 3 oeufs, 20 cl de crème liquide, 1 pincée de cannelle, 1 sachet de sucre vanillé ",
        "Déroulez, étalez et piquez la pâte dans un moule à tarte. Pelez, videz et coupez en fines tranches les pommes. Posez-les sur la pâte en rosace. Dans un saladier, battez les œufs avec le sucre, puis ajoutez la crème et la cannelle. Versez le mélange sur les pommes. Mettez au four à 210°C (thermostat 7) pour 40 minutes environ. Vers la fin de la cuisson, répartissez sur la tarte le sucre vanillé et remettez au four pour caramélisé. ",
        false,
        46),
    RecipeModel("Bugnes Lyonnaises",
        "Par Laurent Rigal",
        "https://www.papillesetpupilles.fr/wp-content/uploads/2013/02/Bugnes-lyonaises-%C2%A9margouillat-photo-shutterstock.jpg",
        "ingrédients : 350 g de farine, 350 g de fleur de maïs Maïzena, 150 g de beurre, 15 g de zeste d’oranges bio, 180 g de sucre, 12 g de sel, 7 œufs, 1 verre de sucre glace, huile",
        "La veille : \n Dans un batteur, mettez 150 g de beurre ramolli, 15 g de zeste d’oranges, 180 g de sucre et 12 g de sel. Ne jamais cessez de tourner.Ajoutez un à un les 7 œufs entiers puis incorporez doucement les 350 g de farine et 350 g de fleur de maïs. Laissez tourner jusqu’à obtention d’un mélange homogène. Moulez la pâte dans un film plastique et la mettre au réfrigérateur pendant 24 heures. \n \nLe lendemain : \n Etalez la pâte avec un rouleau à pâtisserie sur une épaisseur d’un demi centimètre. Taillez les formes désirées au couteau ou à la roulette en pizza (triangles par exemple). Faites une incision au milieu et faites la forme comme ici (si vous voulez sinon faites juste des triangles ou des quadrilatères). Ici, c’est Charles Cousin, le second de Laurent Rigal qui me montre. Désolée pour la rapidité de la vidéo, j’ai pu au moins prendre la façon de faire  en entier.",
        false,
        82),

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Ma liste de recettes"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context,index){
            final recipe = recipes[index];
            return Dismissible(key: Key(recipe.title),
              onDismissed: (direction){
              setState(() {
                recipes.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${recipe.title} supprimé !")));
              },
              background: Container(color: Colors.green),
              child: RecipeItemWidget(recipeModel: recipe),
            );
          },
        )
    );
  }
}

class RecipeItemWidget extends StatelessWidget{
  const RecipeItemWidget({Key? key,required this.recipeModel}): super(key: key);
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       Navigator.pushNamed(context,
       '/recipe',
       arguments: recipeModel);
      },
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 6,
        child: Row(
          children: [
            Hero(
              tag: "imageRecipe" + recipeModel.imageUrl,
              child: CachedNetworkImage(
                imageUrl:
                recipeModel.imageUrl,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(recipeModel.title,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                  Text(recipeModel.user,
                  style: TextStyle(color: Colors.grey[500],fontSize: 16),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}