// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wardrobe_piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardrobePieceImpl _$$WardrobePieceImplFromJson(Map<String, dynamic> json) =>
    _$WardrobePieceImpl(
      id: json['id'] as String,
      imageUrl: json['image_url'] as String,
      category: json['category'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      createdAt: (json['created_at'] as num?)?.toInt(),
      updatedAt: (json['updated_at'] as num?)?.toInt(),
      mood: json['mood'] as String?,
      occasion: json['occasion'] as String?,
      brand: json['brand'] as String?,
      size: json['size'] as String?,
      visibility: json['visibility'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      datePurchased: json['date_purchased'] as String?,
      season: json['season'] as String?,
      state: json['state'] as String?,
      fabric: json['fabric'] as String?,
      isFavorite: json['is_favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$WardrobePieceImplToJson(_$WardrobePieceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'category': instance.category,
      'tags': instance.tags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'mood': instance.mood,
      'occasion': instance.occasion,
      'brand': instance.brand,
      'size': instance.size,
      'visibility': instance.visibility,
      'price': instance.price,
      'date_purchased': instance.datePurchased,
      'season': instance.season,
      'state': instance.state,
      'fabric': instance.fabric,
      'is_favorite': instance.isFavorite,
    };
