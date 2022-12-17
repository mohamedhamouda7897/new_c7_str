import 'package:flutter/material.dart';
import 'package:news_c7_str/models/SourcesResponse.dart';

class TabItem extends StatelessWidget {

  Sources sources;
  bool isSelected;
  TabItem(this.sources,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 6),
      decoration: BoxDecoration(
        color: isSelected?Colors.green:Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.green)
      ),
      child: Text(sources.name??"",style: TextStyle(
        color: isSelected?Colors.white:Colors.green
      ),),

    );
  }
}
