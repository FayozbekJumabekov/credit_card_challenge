import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tenge_bank_task/domain/home/home_failure.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import '../../domain/common/exceptions.dart';
import '../../domain/home/i_home_facade.dart';
import '../services/local_database/db_service.dart';
import '../services/log_service.dart';

class HomeRepository implements IHomeFacade {
  final DBService _dbService;

  HomeRepository(
    this._dbService,
  );

  /// Get Card
  @override
  Future<Either<HomeFailure, CardModel?>> getCard() async {
    try {
      final res = _dbService.loadCard();
      return right(res);
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(HomeFailure.networkFailure(message: 'network_error'.tr()));
      } else {
        return left(HomeFailure.unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  /// Save Card
  @override
  Future<Either<HomeFailure, SuccessResponseModel>> saveCard(
      CardModel cardModel) async {
    try {
      final res = await _dbService.storeCard(cardModel);
      return right(res);
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(HomeFailure.networkFailure(message: 'network_error'.tr()));
      } else {
        return left(HomeFailure.unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<HomeFailure, SuccessResponseModel?>> removeCard() async {
    try {
      final res = await _dbService.removeCard();
      return right(res);
    } catch (e) {
      LogService.e(e.toString());

      if (e is NetworkException) {
        return left(HomeFailure.networkFailure(message: 'network_error'.tr()));
      } else {
        return left(HomeFailure.unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
