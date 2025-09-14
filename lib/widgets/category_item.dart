
import 'package:flutter/material.dart';
import 'package:untitled12/model/Meal.dart';
import 'package:untitled12/screens/meal_screen.dart';
import '../Styles.dart' show App_styles;
import '../model/category.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: (){
           Navigator.pushNamed(context, "mealScreen",arguments: {
             "name": category.name,
             "id": category.id,
           });
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
                color: Colors.black54,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Text(category.name,
                  style: App_styles.textStyle30,)),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(category.image))
            )),
        ),
      ),
    );
  }
}
