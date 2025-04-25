import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(context, {double width = 320}) {
   return Container(
      width: width,
      color: const Color.fromARGB(255, 193, 210, 218),
      child:
      //LA IN EN PADDING SJÄLV VET INTE OM DEN BORDE VARA HÄR 
        Padding(
          padding: EdgeInsets.only(left:10, right: 10),
          child:
          Column(
            children:[
              Logo(), 
              Text("Hitta ett recept som passar genom att ändra inställningarna nedanför"), 
              IngredientControl(), 
              KitchenControl(),
              Text("Svårighetsgrad"),
              DifficultyControl(),
              Text("Maxpris"),
              PriceControl(),
              Text("Maxtid"),
              TimeControl(),
            ]
          )
        )
   );
  }
}  