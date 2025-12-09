import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/app/app_error.dart';
import '../../../../core/shared/view_state.dart';
import '../../domain/models/wardrobe_piece.dart';
import '../../domain/models/wardrobe_response.dart';
import '../../domain/service/user_service.dart';

part 'get_user_wardrobe_cubit.freezed.dart';
part 'get_user_wardrobe_state.dart';

class GetUserWardrobeCubit extends Cubit<GetUserWardrobeState> {
  GetUserWardrobeCubit({required UserService userService})
    : _userService = userService,
      super(const GetUserWardrobeState());

  final UserService _userService;

  Future<void> getWardrobe() async {
    if (state.isLoading) return;

    emit(state.toLoading());

    final Either<AppError, WardrobeResponse> result = await _userService
        .getUserWardrobe();

    result.fold(
      (AppError error) => emit(state.toError(error.message)),
      (WardrobeResponse response) => emit(state.toLoaded(response.pieces)),
    );
  }

  void resetErrorMessage() {
    emit(state.resetError());
  }
}
