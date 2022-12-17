
import 'package:flutter/material.dart';

import '../models/category.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {

  Function callBackBtn;
  CategoriesScreen(this.callBackBtn);
  @override
  Widget build(BuildContext context) {
    var categories=Category.getCategories();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pick your Category',style: TextStyle(fontSize: 35),),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(15),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16
            ),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                        callBackBtn(categories[index]);
                      },
                      child: CategoryItem(categories[index],index));
                },
            itemCount:categories.length,),
          ),
        ),
      ],
    );
  }
}
