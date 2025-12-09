import 'package:freezed_annotation/freezed_annotation.dart';

part 'wardrobe_piece.freezed.dart';
part 'wardrobe_piece.g.dart';

@freezed
class WardrobePiece with _$WardrobePiece {
  const factory WardrobePiece({
    required String id,
    @JsonKey(name: 'image_url') required String imageUrl,
    required String category,
    @Default([]) List<String> tags,
    @JsonKey(name: 'created_at') int? createdAt,
    @JsonKey(name: 'updated_at') int? updatedAt,
    String? mood,
    String? occasion,
    String? brand,
    String? size,
    String? visibility,
    double? price,
    @JsonKey(name: 'date_purchased') String? datePurchased,
    String? season,
    String? state,
    String? fabric,
    @JsonKey(name: 'is_favorite', defaultValue: false) bool? isFavorite,
  }) = _WardrobePiece;

  factory WardrobePiece.fromJson(Map<String, dynamic> json) =>
      _$WardrobePieceFromJson(json);
}
