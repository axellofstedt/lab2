import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/widgets/recipe_list_item.dart';
import 'package:provider/provider.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    var recipes = recipeHandler.bestMatches;

    return(Column(children: [
      for (final recipe in recipes)
        //här är vi nu.,
        recipe,
    ], 
      
    ));
      
  
    }


}