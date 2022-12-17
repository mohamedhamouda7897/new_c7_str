
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {

  Category category;
  int index;
  CategoryItem(this.category,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(12) ,
            topRight: Radius.circular(12),
          bottomLeft:index.isOdd?Radius.circular(0):Radius.circular(12) ,
          bottomRight:index.isEven?Radius.circular(0):Radius.circular(12)
        )
      ),
      child: Column(
        children: [
          Image.asset(category.image,height: 140,),
          Expanded(child: Text(category.title,style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),))
        ],
      ),
    );
  }
}
