import 'package:flutter/material.dart';
import 'package:untitled12/data.dart';
import 'package:untitled12/model/Meal.dart';
import 'package:untitled12/widgets/category_details.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map< String , dynamic>;
    List<Meal> mealsFilter = meals.where((value){
      return value.categoryNumber == data["id"];
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(data["id"]),
      ),
      body: CategoryDetails()

      // ListView.builder(itemBuilder: (context , index){
      //   return Column(children: [
      //     Image.asset(mealsFilter[index].imageUrl),
      //     Text(mealsFilter[index].title)
      //   ],);
      // },itemCount: mealsFilter.length,
      // )
    );
  }
}
