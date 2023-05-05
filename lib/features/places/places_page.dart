import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recomendation_system/widgets/app_drawer.dart';
import 'package:recomendation_system/widgets/place_card.dart';
import '../../models/places.dart';

class PlacesPage extends StatefulWidget {
  const PlacesPage({Key? key}) : super(key: key);

  static const routeName = '/places-page';

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  Future<void> _refreshPlaces(BuildContext context) async {
    await Provider.of<Places>(context, listen: false).fetchPlaces();
  }

  @override
  Widget build(BuildContext context) {
    final places = Provider.of<Places>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/eldar.jpg'),
            ),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        actions: [
          Consumer<Places>(
            builder:(ctx, places, _) => IconButton(
              onPressed: () {print(places.items);},
              icon: const Icon(Icons.favorite),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshPlaces(context),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (ctx, i) => Column(
                children: [
                  PlaceCard(
                      imagePath: places[i].imagePath,
                      placeName: places[i].name,
                      description: places[i].description,
                      averagePrice: places[i].price,
                      isFavorite: places[i].isFavorite),
                ],
              ),
            ),
          ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
