import 'package:flutter/material.dart';
import 'package:recomendation_system/features/places/place_overview.dart';

class PlaceCard extends StatelessWidget {
  final String placeName;
  final String description;
  final List<String> tags;
  final String imagePath;
  final String address;
  final List<String> contacts;
  final bool? isFavorite;

  const PlaceCard({
    super.key,
    required this.placeName,
    required this.description,
    required this.tags,
    required this.imagePath,
    required this.address,
    required this.contacts,
    this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          PlaceOverview.routeName,
          arguments: 12,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(imagePath),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      placeName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(description),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Text(
                          '${contacts}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        const Text('4.5'),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            // TODO: Add your action here.
                          },
                          icon: Icon(
                            isFavorite == null ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
