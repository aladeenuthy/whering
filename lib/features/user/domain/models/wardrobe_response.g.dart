// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wardrobe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardrobeResponseImpl _$$WardrobeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WardrobeResponseImpl(
  pieces: (json['pieces'] as List<dynamic>)
      .map((e) => WardrobePiece.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$WardrobeResponseImplToJson(
  _$WardrobeResponseImpl instance,
) => <String, dynamic>{'pieces': instance.pieces};
