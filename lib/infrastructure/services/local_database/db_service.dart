import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';

class DBService {
  static const _dbName = 'localDB';
  static const _card = 'name';
  static const _id = 'id';
  static Box? _box;

  DBService._();

  static Future<DBService> get create async {
    _box ??= await Hive.openBox(_dbName);
    return DBService._();
  }

  /// ID
  Future<void> setId(String? id) async {
    await _box?.put(_id, id ?? "");
  }

  String get getId {
    final id = _box?.get(_id);

    return id ?? ("");
  }

  static String get getDbName => _dbName;

  /// __________________________________________________________________///

  /// Store Card
  Future<SuccessResponseModel> storeCard(CardModel? cardModel) async {
    String? convertedCard = jsonEncode(cardModel?.toJson());
    await _box?.put(_card, convertedCard);

    SuccessResponseModel successResponseModel =
        SuccessResponseModel((p0) => p0..message = 'success_saved'.tr());
    return successResponseModel;
  }

  /// Get Card
  CardModel? loadCard() {
    CardModel? cardModel;
    String? res = _box?.get(_card);
    if (res != null) {
      cardModel = CardModel.fromJson(jsonDecode(res));
    }
    return cardModel;
  }

  /// Remove Card
  Future<SuccessResponseModel> removeCard() async {
    await _box?.clear();

    SuccessResponseModel successResponseModel =
        SuccessResponseModel((p0) => p0..message = 'success_remove'.tr());
    return successResponseModel;
  }
}
