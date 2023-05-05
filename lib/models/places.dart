import 'package:flutter/cupertino.dart';
import 'package:recomendation_system/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _items = [
    Place(
      imagePath: 'assets/images/maiki.jpeg',
      name: 'Place to go',
      tags: ['food', 'entertainment'],
      description: 'Here is long description',
      price: 500,
      isFavorite: false,
    )
  ];

  Places(this._items);

  List<Place> get items {
    return [..._items];
  }

  Future<void> fetchPlaces() async {

    notifyListeners();
  }
}