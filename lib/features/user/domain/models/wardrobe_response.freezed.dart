// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wardrobe_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WardrobeResponse _$WardrobeResponseFromJson(Map<String, dynamic> json) {
  return _WardrobeResponse.fromJson(json);
}

/// @nodoc
mixin _$WardrobeResponse {
  List<WardrobePiece> get pieces => throw _privateConstructorUsedError;

  /// Serializes this WardrobeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WardrobeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WardrobeResponseCopyWith<WardrobeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardrobeResponseCopyWith<$Res> {
  factory $WardrobeResponseCopyWith(
    WardrobeResponse value,
    $Res Function(WardrobeResponse) then,
  ) = _$WardrobeResponseCopyWithImpl<$Res, WardrobeResponse>;
  @useResult
  $Res call({List<WardrobePiece> pieces});
}

/// @nodoc
class _$WardrobeResponseCopyWithImpl<$Res, $Val extends WardrobeResponse>
    implements $WardrobeResponseCopyWith<$Res> {
  _$WardrobeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WardrobeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pieces = null}) {
    return _then(
      _value.copyWith(
            pieces: null == pieces
                ? _value.pieces
                : pieces // ignore: cast_nullable_to_non_nullable
                      as List<WardrobePiece>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WardrobeResponseImplCopyWith<$Res>
    implements $WardrobeResponseCopyWith<$Res> {
  factory _$$WardrobeResponseImplCopyWith(
    _$WardrobeResponseImpl value,
    $Res Function(_$WardrobeResponseImpl) then,
  ) = __$$WardrobeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WardrobePiece> pieces});
}

/// @nodoc
class __$$WardrobeResponseImplCopyWithImpl<$Res>
    extends _$WardrobeResponseCopyWithImpl<$Res, _$WardrobeResponseImpl>
    implements _$$WardrobeResponseImplCopyWith<$Res> {
  __$$WardrobeResponseImplCopyWithImpl(
    _$WardrobeResponseImpl _value,
    $Res Function(_$WardrobeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WardrobeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pieces = null}) {
    return _then(
      _$WardrobeResponseImpl(
        pieces: null == pieces
            ? _value._pieces
            : pieces // ignore: cast_nullable_to_non_nullable
                  as List<WardrobePiece>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WardrobeResponseImpl implements _WardrobeResponse {
  const _$WardrobeResponseImpl({required final List<WardrobePiece> pieces})
    : _pieces = pieces;

  factory _$WardrobeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WardrobeResponseImplFromJson(json);

  final List<WardrobePiece> _pieces;
  @override
  List<WardrobePiece> get pieces {
    if (_pieces is EqualUnmodifiableListView) return _pieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieces);
  }

  @override
  String toString() {
    return 'WardrobeResponse(pieces: $pieces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WardrobeResponseImpl &&
            const DeepCollectionEquality().equals(other._pieces, _pieces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pieces));

  /// Create a copy of WardrobeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WardrobeResponseImplCopyWith<_$WardrobeResponseImpl> get copyWith =>
      __$$WardrobeResponseImplCopyWithImpl<_$WardrobeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WardrobeResponseImplToJson(this);
  }
}

abstract class _WardrobeResponse implements WardrobeResponse {
  const factory _WardrobeResponse({required final List<WardrobePiece> pieces}) =
      _$WardrobeResponseImpl;

  factory _WardrobeResponse.fromJson(Map<String, dynamic> json) =
      _$WardrobeResponseImpl.fromJson;

  @override
  List<WardrobePiece> get pieces;

  /// Create a copy of WardrobeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WardrobeResponseImplCopyWith<_$WardrobeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
