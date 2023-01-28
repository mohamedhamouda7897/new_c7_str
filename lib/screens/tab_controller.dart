import 'package:flutter/material.dart';
import 'package:news_c7_str/models/NewsDataModel.dart';
import 'package:news_c7_str/repo/dto/remote_api.dart';
import 'package:news_c7_str/screens/tab_item.dart';
import 'package:news_c7_str/shared/network/remote/api_manager.dart';

import '../models/SourcesResponse.dart';
import 'news_item.dart';

class TabControllerScreen extends StatefulWidget {
  List<Sources> sources;

  TabControllerScreen(this.sources);

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  int selectedIndex = 0;

  ApiManager apiManager=ApiManager(baseRepository: RemoteApi());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            tabs: widget.sources
                .map((source) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabItem(source,
                          widget.sources.indexOf(source) == selectedIndex),
                    ))
                .toList(),
          ),
        ),
        FutureBuilder<NewsDataModel>(
          future: apiManager.baseRepository!.getNewsData(widget.
          sources[selectedIndex].id??""),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Something went wrong'),
                    TextButton(onPressed: () {}, child: Text('Try Again'))
                  ],
                ),
              );
            }
            if (snapshot.data!.status != 'ok') {
              return Column(
                children: [
                  Text(snapshot.data?.message ?? ""),
                  TextButton(onPressed: () {}, child: Text('Try Again'))
                ],
              );
            }

            var news = snapshot.data?.articles ?? [];
            return Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsItem(news[index]);
                },
                itemCount: news.length,
              ),
            );
          },
        )
      ],
    );
  }
}
