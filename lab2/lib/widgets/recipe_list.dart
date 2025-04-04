import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/widgets/recipe_list_item.dart';
import 'package:provider/provider.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    var recipeHandler = context.watch<RecipeHandler>();
    var recipes = recipeHandler.bestMatches;
    var uiController = Provider.of<UIController>(context, listen: false);


    onTap(Recipe recipe) {
      uiController.selectRecipe(recipe);
    }
    return ListView(children: [
      for (final recipe in recipes)
      GestureDetector(
      onTap: () => onTap(recipe),
      child: Row(children: [
        Image.asset("assets/recipes/" + recipe.imagePath, scale: 3,),
        Text(recipe.name),
      ]
        ),
      ),
    ]
    );
  }
}