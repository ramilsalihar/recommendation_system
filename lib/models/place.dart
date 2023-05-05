import 'package:flutter/material.dart';

class Place with ChangeNotifier {
  final String imagePath;
  final String name;
  final List<String> tags;
  final String description;
  final double price;
  bool isFavorite;

  Place({
    required this.imagePath,
    required this.name,
    required this.tags,
    required this.description,
    required this.price,
    required this.isFavorite,
  });
}
