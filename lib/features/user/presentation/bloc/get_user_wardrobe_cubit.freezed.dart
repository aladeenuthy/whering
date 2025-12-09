// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_wardrobe_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetUserWardrobeState {
  ViewState get viewState => throw _privateConstructorUsedError;
  List<WardrobePiece> get pieces => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of GetUserWardrobeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserWardrobeStateCopyWith<GetUserWardrobeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserWardrobeStateCopyWith<$Res> {
  factory $GetUserWardrobeStateCopyWith(
    GetUserWardrobeState value,
    $Res Function(GetUserWardrobeState) then,
  ) = _$GetUserWardrobeStateCopyWithImpl<$Res, GetUserWardrobeState>;
  @useResult
  $Res call({
    ViewState viewState,
    List<WardrobePiece> pieces,
    String? errorMessage,
  });
}

/// @nodoc
class _$GetUserWardrobeStateCopyWithImpl<
  $Res,
  $Val extends GetUserWardrobeState
>
    implements $GetUserWardrobeStateCopyWith<$Res> {
  _$GetUserWardrobeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserWardrobeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? pieces = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            viewState: null == viewState
                ? _value.viewState
                : viewState // ignore: cast_nullable_to_non_nullable
                      as ViewState,
            pieces: null == pieces
                ? _value.pieces
                : pieces // ignore: cast_nullable_to_non_nullable
                      as List<WardrobePiece>,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetUserWardrobeStateImplCopyWith<$Res>
    implements $GetUserWardrobeStateCopyWith<$Res> {
  factory _$$GetUserWardrobeStateImplCopyWith(
    _$GetUserWardrobeStateImpl value,
    $Res Function(_$GetUserWardrobeStateImpl) then,
  ) = __$$GetUserWardrobeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ViewState viewState,
    List<WardrobePiece> pieces,
    String? errorMessage,
  });
}

/// @nodoc
class __$$GetUserWardrobeStateImplCopyWithImpl<$Res>
    extends _$GetUserWardrobeStateCopyWithImpl<$Res, _$GetUserWardrobeStateImpl>
    implements _$$GetUserWardrobeStateImplCopyWith<$Res> {
  __$$GetUserWardrobeStateImplCopyWithImpl(
    _$GetUserWardrobeStateImpl _value,
    $Res Function(_$GetUserWardrobeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetUserWardrobeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? pieces = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$GetUserWardrobeStateImpl(
        viewState: null == viewState
            ? _value.viewState
            : viewState // ignore: cast_nullable_to_non_nullable
                  as ViewState,
        pieces: null == pieces
            ? _value._pieces
            : pieces // ignore: cast_nullable_to_non_nullable
                  as List<WardrobePiece>,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GetUserWardrobeStateImpl extends _GetUserWardrobeState {
  const _$GetUserWardrobeStateImpl({
    this.viewState = ViewState.initial,
    final List<WardrobePiece> pieces = const [],
    this.errorMessage,
  }) : _pieces = pieces,
       super._();

  @override
  @JsonKey()
  final ViewState viewState;
  final List<WardrobePiece> _pieces;
  @override
  @JsonKey()
  List<WardrobePiece> get pieces {
    if (_pieces is EqualUnmodifiableListView) return _pieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieces);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'GetUserWardrobeState(viewState: $viewState, pieces: $pieces, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserWardrobeStateImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            const DeepCollectionEquality().equals(other._pieces, _pieces) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    viewState,
    const DeepCollectionEquality().hash(_pieces),
    errorMessage,
  );

  /// Create a copy of GetUserWardrobeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserWardrobeStateImplCopyWith<_$GetUserWardrobeStateImpl>
  get copyWith =>
      __$$GetUserWardrobeStateImplCopyWithImpl<_$GetUserWardrobeStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GetUserWardrobeState extends GetUserWardrobeState {
  const factory _GetUserWardrobeState({
    final ViewState viewState,
    final List<WardrobePiece> pieces,
    final String? errorMessage,
  }) = _$GetUserWardrobeStateImpl;
  const _GetUserWardrobeState._() : super._();

  @override
  ViewState get viewState;
  @override
  List<WardrobePiece> get pieces;
  @override
  String? get errorMessage;

  /// Create a copy of GetUserWardrobeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserWardrobeStateImplCopyWith<_$GetUserWardrobeStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
