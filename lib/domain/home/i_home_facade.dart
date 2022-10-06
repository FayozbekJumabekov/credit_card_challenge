import 'package:dartz/dartz.dart';

import '../../infrastructure/models/card/card.dart';
import 'home_failure.dart';

abstract class IHomeFacade {
  Future<Either<HomeFailure, CardModel?>> getCard();

  Future<Either<HomeFailure, SuccessResponseModel?>> removeCard();

  Future<Either<HomeFailure, SuccessResponseModel>> saveCard(
    CardModel cardModel,
  );
}
