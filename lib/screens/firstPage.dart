import 'package:flutter/material.dart';
import 'package:flutter_project/models/recipe_model.dart';
import 'package:flutter_project/screens/recipeListScreen.dart';
import 'package:flutter_project/screens/recipeScreen.dart';


class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings)=> RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(builder: (context) => RecipeListScreen());
        case '/recipe' :
          var arguments = settings.arguments;
          return PageRouteBuilder(
            pageBuilder: (context,animation,secondaryAnimation) => RecipeScreen(recipeModel: arguments as RecipeModel),
            transitionsBuilder: (context,animation,secondaryAnimation,child){
            animation = CurvedAnimation(curve: Curves.ease, parent: animation);
            return FadeTransition(
            opacity: animation,
            child: child,
            );
          }
        );
      default:
        return MaterialPageRoute(builder:
            (context) => Scaffold(
              appBar: AppBar(title: Text("Error"), centerTitle: true),
              body: Center(
                child: Text("Page not Found"),
              ),
        ));
    }
  }
}


