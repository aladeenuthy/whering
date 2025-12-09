
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:whering/core/app/app_error.dart';
import 'package:whering/core/domain/base_app_service.dart';
import 'package:whering/features/user/domain/models/wardrobe_response.dart';

import '../../../../core/app/endpoints.dart';
import '../models/wardrobe_piece.dart';

abstract class UserService extends BaseAppService {
   UserService({
    required super.api,
  });
  Future<Either<AppError, WardrobeResponse>> getUserWardrobe();

}

class UserServiceImpl extends UserService {
  UserServiceImpl({required super.api}) ;

  @override
Future<Either<AppError, WardrobeResponse>> getUserWardrobe() async {
  return makeRequest(
    () async {
      final Response<dynamic> response = await get(Endpoints.pieces);
      final data = response.data as Map<String, dynamic>;
      final pieces = (data['pieces'] as List)
          .map((e) => WardrobePiece.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(WardrobeResponse(pieces: pieces));
    },
  );
}
}