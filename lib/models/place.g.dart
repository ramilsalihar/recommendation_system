// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) => Place(
      name: json['name'] as String,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      imagePath: json['imagePath'] as String,
      address: json['address'] as String,
      contacts:
          (json['contacts'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'imagePath': instance.imagePath,
      'address': instance.address,
      'contacts': instance.contacts,
      'isFavorite': instance.isFavorite,
    };
