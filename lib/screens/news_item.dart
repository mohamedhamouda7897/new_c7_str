import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_c7_str/models/NewsDataModel.dart';

class NewsItem extends StatelessWidget {

  Articles articles;
  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(color: Colors.white,

        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
          imageUrl: articles.urlToImage??"",
          height: 180,
          fit: BoxFit.fill,
          width: double.infinity,
          placeholder: (context, url) => Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
      ),
        ),
          Text(articles.author??"",style: TextStyle(fontSize: 12,
          color: Colors.grey.shade400),),
          SizedBox(
            height: 10,
          ),
          Text(articles.title??"",style: TextStyle(fontSize: 22,
              color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),Text(articles.publishedAt?.substring(0,10)??"",textAlign: TextAlign.right,)
        ],
      ),
    );
  }
}
