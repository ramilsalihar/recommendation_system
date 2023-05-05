import 'package:flutter/material.dart';
import 'package:recomendation_system/features/app/intro_page.dart';
import 'package:provider/provider.dart';
import 'package:recomendation_system/features/places/place_overview.dart';
import 'package:recomendation_system/features/places/places_page.dart';

import 'models/place.dart';
import 'models/places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        PlaceOverview.routeName: (ctx) => const PlaceOverview(),
        PlacesPage.routeName: (ctx) => const PlacesPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Places>(
          create: (_) => Places([
            Place(
              imagePath: 'assets/images/maiki.jpeg',
              name: 'Caffe',
              tags: ["enterainment"],
              description: 'description',
              price: 500,
              isFavorite: false,
            )
          ]),
        )
      ],
      child: const PlacesPage(),
    );
  }
}
