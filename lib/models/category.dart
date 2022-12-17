import 'package:flutter/material.dart';

class Category {
  String id;
  String title;
  String image;
  Color color;

  Category(this.id, this.title, this.image, this.color);

  static List<Category> getCategories() {
    return [
      Category('general', 'General', 'assets/images/environment.png',
          Color(0xFF4882CF)),
      Category(
          'health', 'Health', 'assets/images/health.png',
          Color(0xFFED1E79)),
      Category(
          'sports', 'Sports', 'assets/images/sports.png', Color(0xFFC91C22)),
      Category('business', 'Business', 'assets/images/bussines.png',
          Color(0xFFCF7E48)),
      Category('entertainment', 'Entertainment',
          'assets/images/politics.png',
          Color(0xFF003E90)),
      Category(
          'science', 'Science',
          'assets/images/science.png', Color(0xFFF2D352)),
      Category('technology', 'Technology', 'assets/images/science.png',
          Color(0xFFED1E79)),

    ];
  }
}
