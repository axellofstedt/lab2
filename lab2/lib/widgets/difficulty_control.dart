import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:provider/provider.dart';

class DifficultyControl extends StatefulWidget {
  const DifficultyControl({super.key});

  @override
  State<DifficultyControl> createState() => _DifficultyControlState();
}

class _DifficultyControlState extends State<DifficultyControl> {

 String _difficulty = Difficulty.labels[0];

@override

Widget build(BuildContext context) {
  const labels = Difficulty.labels;
  final icons = Difficulty.icons;
  var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
  return Column(
    children: [
      for (int i=0; i<labels.length; i++)
        RadioListTile<String>(
          dense: true,
          title: 
            Row(
              children:[
                if (icons[i]!=null) ...[
                  icons[i]!,
                  SizedBox(width:AppTheme.paddingMedium),
                ],
                Text(labels[i])
              ]
            ),
          value: labels[i],
          groupValue: _difficulty,
          onChanged: (value) {
            setState(() {
              _difficulty = value!;
              recipeHandler.setDifficulty(value);
              });
            },
         ),
      ],
  );
}
}