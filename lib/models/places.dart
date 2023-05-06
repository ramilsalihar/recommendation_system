import 'package:flutter/cupertino.dart';
import 'package:recomendation_system/models/place.dart';

List<Map<String, dynamic>> getData = [
  {
    'name' : 'Theatre',
    'description' : 'НАРЫНСКИЙ ОБЛАСТНОЙ МУЗЫКАЛЬНО-ДРАМАТИЧЕСКИЙ ТЕАТР ИМ. М.РЫСКУЛОВА',
    'tags' : ['Cultural & Historical', 'Family', 'Couples'],
    'imagePath' : 'https://scontent.ffru5-2.fna.fbcdn.net/v/t1.6435-9/191059202_105953781697229_19012655024039858_n.jpg?stp=c0.25.525.274a_dst-jpg_p235x350&_nc_cat=101&ccb=1-7&_nc_sid=e3f864&_nc_ohc=rYo8eYR-J58AX_QUVPx&_nc_ht=scontent.ffru5-2.fna&oh=00_AfCBj1PodRjGG0-12IZK1KJZXcSGKQ3iDErKw2N8C4Tp3Q&oe=647CAFC7',
    'address' : 'Кыргызстан, Нарынская область, Нарын, ул. Ленина, 96',
    'contacts' : ['0705-172-254'],
  },
  {
    'name' : 'Cinema',
    'description' : 'НАРЫН КИНОТЕАТР',
    'tags' : ['Entertainment', 'Couples', 'Family', 'Student'],
    'imagePath' : 'https://st-1.akipress.org/cdn-st-0/qYq/P/1067136.cfb12271ed2304516fcfb1669d479933.jpg',
    'address' : 'Нарын, ул. Ленина, 76',
    'contacts' : ['0500-505-502', 'kino_naryn'],
  },
  {
    'name' : 'Madison Caffe',
    'description' : 'СУШИ • РОЛЛЫ • ПИЦЦА • РАМЁН - НАРЫН',
    'tags' : ['Food', 'Couples', 'Family', 'Student'],
    'imagePath' : 'https://nomoneynotime.com.au/uploads/recipes/shutterstock_2042520416-1.jpg',
    'address' : 'Нарын, ул. Ленина, 23',
    'contacts' : ['0509-308-050', 'madison_naryn_kg'],
  },
  {
    'name' : 'Restaurant Corona',
    'description' : 'Идеальная площадка для главных событий вашей жизни 💫Низкая цена за высшее качество! 🥂| Зал торжеств 🍴| Вместимость 250 человек🦪| Изысканная кухня',
    'tags' : ['Food', 'Entertainment', 'Couples', 'Family', 'Student'],
    'imagePath' : 'https://nomoneynotime.com.au/uploads/recipes/shutterstock_2042520416-1.jpg',
    'address' : 'Нарын, ул. Ленина, 23',
    'contacts' : ['corona.naryn'],
  },
  {
    'name' : 'Изумруд Чайхана',
    'description' : 'ИЗУМРУД • ЧАЙХАНА • ХАЛАЛ • НАРЫН / Гостеприимство и уют / Доступные цены / Работаем БЕЗ ВЫХОДНЫХ с 10:00- 23:00ч / 🚙 Бесплатная ДОСТАВКА от 2000с',
    'tags' : ['Food', 'Couples', 'Family', 'Student'],
    'imagePath' : 'https://nomoneynotime.com.au/uploads/recipes/shutterstock_2042520416-1.jpg',
    'address' : 'Нарын, ул. Ленина, 132',
    'contacts' : ['0700878758', 'izumrud.naryn'],
  },
  {
    'name' : 'University of Central Asia',
    'description' : 'The University of Central Asia (UCA) was founded in 2000 as a private, not for profit, secular university',
    'tags' : ['Student', 'Trip'],
    'imagePath' : 'https://live.staticflickr.com/65535/49643848013_6ee1aa1c49_b.jpg',
    'address' : 'Нарын, ул. Ленина, 310',
    'contacts' : ['ucentralasia'],
  },
  {
    'name' : 'Museum',
    'description' : 'Нарынский исторический этнографический музей носит имя первой женщины этнографа Кыргызстана, кандидата наук Какен Мамбеталиевой',
    'tags' : ['Student', 'Trip', 'Friends', 'Tourists'],
    'imagePath' : 'https://fastly.4sqi.net/img/general/600x600/62851504_03FQvi33kbgX6cUaPis9OJ6SL1bbLPnPasDYXNTHVII.jpg',
    'address' : 'Нарын, ул.Разакова 4',
    'contacts' : [],
  },
  {
    'name' : 'Гурман Чайхана',
    'description' : 'НАРЫН | ШАШЛЫКИ',
    'tags' : ['Get Drunk', 'Food', 'Friends', 'Family', 'Couples'],
    'imagePath' : 'https://media-cdn.tripadvisor.com/media/photo-s/21/82/f6/ae/gurman-inside-view.jpg',
    'address' : 'Нарын, ул.Разакова 80',
    'contacts' : ['0704-445-555', 'gurman_naryn'],
  },
];

class Places with ChangeNotifier {
  List<Place> _items = [];

  Places(this._items);

  List<Place> get items {
    return [..._items];
  }

  Future<void> fetchPlaces() async {
    _items = getData.map((map) => Place.fromJson(map)).toList();
    notifyListeners();
  }
}