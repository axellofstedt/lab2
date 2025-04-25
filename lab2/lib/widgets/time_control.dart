import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/constants/assets.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:provider/provider.dart';

class TimeControl extends StatefulWidget {
  const TimeControl({super.key});

  @override
  State<TimeControl> createState() => _TimeControlState();
}

class _TimeControlState extends State<TimeControl> {
  double _time = 60;

  @override
  Widget build(BuildContext context) {
    Image timeIcon = Image.asset(Assets.timeIcon, height: 16);
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    return Column(
      children: [
        Slider(
          value: _time,
          divisions: 14,
          min: 10,
          max: 150,
          onChanged: (double value) {
            setState(() {
              _time = value;
            });
            recipeHandler.setMaxTime(value.toInt());
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: AppTheme.paddingLarge),
              child: 
                Row(
                  children: [
                    Text('${_time.round()} '),
                    //SizedBox(width:AppTheme.paddingSmall),
                    timeIcon,
                  ]
                ) 
            ),
          ],
        ),
      ],
    );
  }
}