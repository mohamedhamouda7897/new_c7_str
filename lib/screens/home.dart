
import 'package:flutter/material.dart';
import 'package:news_c7_str/screens/tab_controller.dart';

import '../models/SourcesResponse.dart';
import '../models/category.dart';
import '../shared/network/remote/api_manager.dart';

class HomeScreen extends StatelessWidget {

  Category category;
  HomeScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
      future:ApiManager.getSources(category.id) ,
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Something went wrong'),
                TextButton(onPressed: (){}, child: Text('Try Again'))
              ],
            ),
          );
        }
        if(snapshot.data!.status !='ok'){
          return Column(
            children: [
              Text(snapshot.data?.message??""),
              TextButton(onPressed: (){}, child: Text('Try Again'))
            ],
          );
        }

        var sources=snapshot.data!.sources;
        return TabControllerScreen(sources??[]);
      },);
  }
}
