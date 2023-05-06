import 'package:json_annotation/json_annotation.dart';

part 'place.g.dart';

@JsonSerializable()
class Place {
  final String name;
  final String description;
  final List<String> tags;
  final String imagePath;
  final String address;
  final List<String> contacts;
  bool isFavorite;

  Place({
    required this.name,
    required this.description,
    required this.tags,
    required this.imagePath,
    required this.address,
    required this.contacts,
    required this.isFavorite,
  });

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}
