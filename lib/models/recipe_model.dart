


class RecipeModel {
  String title;
  String user;
  String imageUrl;
  String ingredients;
  String description;
  bool isFavorite;
  int favoriteCount;

  RecipeModel(this.title, this.user, this.imageUrl, this.ingredients,this.description,
      this.isFavorite, this.favoriteCount);

  String key() => title.hashCode.toString();
}