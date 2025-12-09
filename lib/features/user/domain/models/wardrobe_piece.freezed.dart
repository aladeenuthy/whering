// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wardrobe_piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WardrobePiece _$WardrobePieceFromJson(Map<String, dynamic> json) {
  return _WardrobePiece.fromJson(json);
}

/// @nodoc
mixin _$WardrobePiece {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;
  String? get occasion => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_purchased')
  String? get datePurchased => throw _privateConstructorUsedError;
  String? get season => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get fabric => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite', defaultValue: false)
  bool? get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this WardrobePiece to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WardrobePiece
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WardrobePieceCopyWith<WardrobePiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardrobePieceCopyWith<$Res> {
  factory $WardrobePieceCopyWith(
    WardrobePiece value,
    $Res Function(WardrobePiece) then,
  ) = _$WardrobePieceCopyWithImpl<$Res, WardrobePiece>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'image_url') String imageUrl,
    String category,
    List<String> tags,
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
  });
}

/// @nodoc
class _$WardrobePieceCopyWithImpl<$Res, $Val extends WardrobePiece>
    implements $WardrobePieceCopyWith<$Res> {
  _$WardrobePieceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WardrobePiece
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mood = freezed,
    Object? occasion = freezed,
    Object? brand = freezed,
    Object? size = freezed,
    Object? visibility = freezed,
    Object? price = freezed,
    Object? datePurchased = freezed,
    Object? season = freezed,
    Object? state = freezed,
    Object? fabric = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as int?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as int?,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
            occasion: freezed == occasion
                ? _value.occasion
                : occasion // ignore: cast_nullable_to_non_nullable
                      as String?,
            brand: freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                      as String?,
            size: freezed == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as String?,
            visibility: freezed == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double?,
            datePurchased: freezed == datePurchased
                ? _value.datePurchased
                : datePurchased // ignore: cast_nullable_to_non_nullable
                      as String?,
            season: freezed == season
                ? _value.season
                : season // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            fabric: freezed == fabric
                ? _value.fabric
                : fabric // ignore: cast_nullable_to_non_nullable
                      as String?,
            isFavorite: freezed == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WardrobePieceImplCopyWith<$Res>
    implements $WardrobePieceCopyWith<$Res> {
  factory _$$WardrobePieceImplCopyWith(
    _$WardrobePieceImpl value,
    $Res Function(_$WardrobePieceImpl) then,
  ) = __$$WardrobePieceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'image_url') String imageUrl,
    String category,
    List<String> tags,
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
  });
}

/// @nodoc
class __$$WardrobePieceImplCopyWithImpl<$Res>
    extends _$WardrobePieceCopyWithImpl<$Res, _$WardrobePieceImpl>
    implements _$$WardrobePieceImplCopyWith<$Res> {
  __$$WardrobePieceImplCopyWithImpl(
    _$WardrobePieceImpl _value,
    $Res Function(_$WardrobePieceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WardrobePiece
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? tags = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mood = freezed,
    Object? occasion = freezed,
    Object? brand = freezed,
    Object? size = freezed,
    Object? visibility = freezed,
    Object? price = freezed,
    Object? datePurchased = freezed,
    Object? season = freezed,
    Object? state = freezed,
    Object? fabric = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(
      _$WardrobePieceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as int?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as int?,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
        occasion: freezed == occasion
            ? _value.occasion
            : occasion // ignore: cast_nullable_to_non_nullable
                  as String?,
        brand: freezed == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as String?,
        size: freezed == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as String?,
        visibility: freezed == visibility
            ? _value.visibility
            : visibility // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double?,
        datePurchased: freezed == datePurchased
            ? _value.datePurchased
            : datePurchased // ignore: cast_nullable_to_non_nullable
                  as String?,
        season: freezed == season
            ? _value.season
            : season // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        fabric: freezed == fabric
            ? _value.fabric
            : fabric // ignore: cast_nullable_to_non_nullable
                  as String?,
        isFavorite: freezed == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WardrobePieceImpl implements _WardrobePiece {
  const _$WardrobePieceImpl({
    required this.id,
    @JsonKey(name: 'image_url') required this.imageUrl,
    required this.category,
    final List<String> tags = const [],
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.mood,
    this.occasion,
    this.brand,
    this.size,
    this.visibility,
    this.price,
    @JsonKey(name: 'date_purchased') this.datePurchased,
    this.season,
    this.state,
    this.fabric,
    @JsonKey(name: 'is_favorite', defaultValue: false) this.isFavorite,
  }) : _tags = tags;

  factory _$WardrobePieceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WardrobePieceImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String category;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'created_at')
  final int? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final int? updatedAt;
  @override
  final String? mood;
  @override
  final String? occasion;
  @override
  final String? brand;
  @override
  final String? size;
  @override
  final String? visibility;
  @override
  final double? price;
  @override
  @JsonKey(name: 'date_purchased')
  final String? datePurchased;
  @override
  final String? season;
  @override
  final String? state;
  @override
  final String? fabric;
  @override
  @JsonKey(name: 'is_favorite', defaultValue: false)
  final bool? isFavorite;

  @override
  String toString() {
    return 'WardrobePiece(id: $id, imageUrl: $imageUrl, category: $category, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, mood: $mood, occasion: $occasion, brand: $brand, size: $size, visibility: $visibility, price: $price, datePurchased: $datePurchased, season: $season, state: $state, fabric: $fabric, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WardrobePieceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.occasion, occasion) ||
                other.occasion == occasion) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.datePurchased, datePurchased) ||
                other.datePurchased == datePurchased) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.fabric, fabric) || other.fabric == fabric) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    imageUrl,
    category,
    const DeepCollectionEquality().hash(_tags),
    createdAt,
    updatedAt,
    mood,
    occasion,
    brand,
    size,
    visibility,
    price,
    datePurchased,
    season,
    state,
    fabric,
    isFavorite,
  );

  /// Create a copy of WardrobePiece
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WardrobePieceImplCopyWith<_$WardrobePieceImpl> get copyWith =>
      __$$WardrobePieceImplCopyWithImpl<_$WardrobePieceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WardrobePieceImplToJson(this);
  }
}

abstract class _WardrobePiece implements WardrobePiece {
  const factory _WardrobePiece({
    required final String id,
    @JsonKey(name: 'image_url') required final String imageUrl,
    required final String category,
    final List<String> tags,
    @JsonKey(name: 'created_at') final int? createdAt,
    @JsonKey(name: 'updated_at') final int? updatedAt,
    final String? mood,
    final String? occasion,
    final String? brand,
    final String? size,
    final String? visibility,
    final double? price,
    @JsonKey(name: 'date_purchased') final String? datePurchased,
    final String? season,
    final String? state,
    final String? fabric,
    @JsonKey(name: 'is_favorite', defaultValue: false) final bool? isFavorite,
  }) = _$WardrobePieceImpl;

  factory _WardrobePiece.fromJson(Map<String, dynamic> json) =
      _$WardrobePieceImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get category;
  @override
  List<String> get tags;
  @override
  @JsonKey(name: 'created_at')
  int? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  int? get updatedAt;
  @override
  String? get mood;
  @override
  String? get occasion;
  @override
  String? get brand;
  @override
  String? get size;
  @override
  String? get visibility;
  @override
  double? get price;
  @override
  @JsonKey(name: 'date_purchased')
  String? get datePurchased;
  @override
  String? get season;
  @override
  String? get state;
  @override
  String? get fabric;
  @override
  @JsonKey(name: 'is_favorite', defaultValue: false)
  bool? get isFavorite;

  /// Create a copy of WardrobePiece
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WardrobePieceImplCopyWith<_$WardrobePieceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
