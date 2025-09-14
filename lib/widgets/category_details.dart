import 'package:flutter/material.dart';
import 'package:untitled12/data.dart';
import 'package:untitled12/model/Meal.dart';
class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map< String , dynamic>;
    List<Meal> mealsFilter = meals.where((value){
      return value.categoryNumber == data["id"];
    }).toList();
    if (mealsFilter.isEmpty) {
      return const Center(
        child: Text(
          "No menu available",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      );
    }
    return  ListView.builder(itemBuilder: (context , index){


      return Container(
        width: double.infinity,
        height: 150,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20))
        ),
        child: Row(
          children: [
            Image.asset(mealsFilter[index].imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Text(mealsFilter[index].title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white
              ),),
            ),
            SizedBox(width: 15,),
            Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
                ),
          ],),
      );
    },itemCount: mealsFilter.length,
    );
  }
}
