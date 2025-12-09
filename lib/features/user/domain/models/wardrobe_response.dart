import 'package:freezed_annotation/freezed_annotation.dart';

import 'wardrobe_piece.dart';

part 'wardrobe_response.freezed.dart';
part 'wardrobe_response.g.dart';

@freezed
class WardrobeResponse with _$WardrobeResponse {
  const factory WardrobeResponse({
    required List<WardrobePiece> pieces,
  }) = _WardrobeResponse;

  factory WardrobeResponse.fromJson(Map<String, dynamic> json) =>
      _$WardrobeResponseFromJson(json);
}