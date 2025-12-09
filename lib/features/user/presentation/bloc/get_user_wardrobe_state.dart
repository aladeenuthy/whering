part of 'get_user_wardrobe_cubit.dart';

@freezed
class GetUserWardrobeState with _$GetUserWardrobeState {
  const factory GetUserWardrobeState({
    @Default(ViewState.initial) ViewState viewState,
    @Default([]) List<WardrobePiece> pieces,
    String? errorMessage,
  }) = _GetUserWardrobeState;

  const GetUserWardrobeState._();

  bool get isLoading => viewState == ViewState.loading;
  bool get isLoaded => viewState == ViewState.loaded;
  bool get isError => viewState == ViewState.error;
  bool get isInitial => viewState == ViewState.initial;

  bool get isEmpty => pieces.isEmpty && isLoaded;
  bool get hasData => pieces.isNotEmpty;


  GetUserWardrobeState toLoading() =>
      copyWith(viewState: ViewState.loading, errorMessage: null);

  GetUserWardrobeState toError(String message) =>
      copyWith(viewState: ViewState.error, errorMessage: message);

  GetUserWardrobeState resetError() =>
      copyWith(viewState: ViewState.initial, errorMessage: null);

  GetUserWardrobeState toLoaded(List<WardrobePiece> pieces) =>
      copyWith(viewState: ViewState.loaded, pieces: pieces, errorMessage: null);
}
