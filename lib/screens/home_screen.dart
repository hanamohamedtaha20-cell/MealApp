import 'package:flutter/material.dart';
import 'package:untitled12/data.dart';
import 'package:untitled12/widgets/category_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text("Meal app") ,
      ),
      body:
      ListView.builder(itemBuilder: (context , index){
       return CategoryItem(category: categories[index]);
      },itemCount: categories.length,
        shrinkWrap: true,
      )
    );
  }
}
