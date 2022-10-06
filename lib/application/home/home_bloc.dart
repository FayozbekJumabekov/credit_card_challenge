import 'dart:async';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tenge_bank_task/domain/common/extensions.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import 'package:tenge_bank_task/infrastructure/repositories/home_repo.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repository;

  HomeBloc(this._repository) : super(const _HomeState()) {
    on<_SetCardNumber>(_setCardNumber);
    on<_SetValidDate>(_setValidDate);
    on<_SetColor>(_setColorCard);
    on<_SetBlur>(_setBlurCard);
    on<_SaveCard>(_saveCard);
    on<_GetCard>(_getCard);
    on<_RemoveCard>(_removeCard);
    on<_UploadImage>(_uploadImage);
    on<_SetPredefinedImage>(_setPredefinedImage);
  }

  /// Set Card Number
  Future<void> _setCardNumber(
      _SetCardNumber event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;
    CardTypeModel? cardTypeModel = state.cardModel?.cardType;
    cardTypeModel = CardTypeModel().findCardTypeModel(event.cardNumber);
    cardModel = CardModel(
      (p0) => p0
        ..cardNumber = event.cardNumber.isNotEmpty ? event.cardNumber : null
        ..expDate = cardModel?.expDate
        ..color = cardModel?.color
        ..cardType = cardTypeModel?.toBuilder()
        ..image = cardModel?.image
        ..predefinedImage = cardModel?.predefinedImage
        ..blur = cardModel?.blur?.toBuilder(),
    );

    emit(state.copyWith(cardModel: cardModel));
  }

  /// Set Card Date
  Future<void> _setValidDate(
      _SetValidDate event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;

    cardModel = CardModel(
      (p0) => p0
        ..cardNumber = cardModel?.cardNumber
        ..expDate = event.date
        ..color = cardModel?.color
        ..cardType = cardModel?.cardType?.toBuilder()
        ..blur = cardModel?.blur?.toBuilder()
        ..predefinedImage = cardModel?.predefinedImage
        ..image = cardModel?.image,
    );

    emit(state.copyWith(cardModel: cardModel));
  }

  /// Set Card Color
  Future<void> _setColorCard(_SetColor event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;

    cardModel = CardModel(
      (p0) => p0
        ..cardNumber = cardModel?.cardNumber
        ..expDate = cardModel?.expDate
        ..cardType = cardModel?.cardType?.toBuilder()
        ..image = null
        ..blur = cardModel?.blur?.toBuilder()
        ..predefinedImage = null
        ..color = event.colorValue,
    );

    emit(state.copyWith(cardModel: cardModel));
  }

  /// Set Predefined Image
  Future<void> _setPredefinedImage(
      _SetPredefinedImage event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;

    cardModel = CardModel(
      (p0) => p0
        ..cardNumber = cardModel?.cardNumber
        ..expDate = cardModel?.expDate
        ..cardType = cardModel?.cardType?.toBuilder()
        ..image = null
        ..blur = cardModel?.blur?.toBuilder()
        ..predefinedImage = event.assetValue
        ..color = null,
    );

    emit(state.copyWith(cardModel: cardModel));
  }

  /// Set Card Color
  Future<void> _setBlurCard(_SetBlur event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;
    BlurModel blurModel = BlurModel((p0) => p0
      ..x = event.x
      ..y = event.y);

    cardModel = CardModel(
      (p0) => p0
        ..cardNumber = cardModel?.cardNumber
        ..expDate = cardModel?.expDate
        ..cardType = cardModel?.cardType?.toBuilder()
        ..image = cardModel?.image
        ..color = cardModel?.color
        ..predefinedImage = cardModel?.predefinedImage
        ..blur = blurModel.toBuilder(),
    );

    emit(state.copyWith(cardModel: cardModel));
  }

  /// Upload Profile Image
  Future<void> _uploadImage(_UploadImage event, Emitter<HomeState> emit) async {
    CardModel? cardModel = state.cardModel;

    if (event.pickedImage != null) {
      File? imageFile = await event.pickedImage!.file;

      if (imageFile == null) {
        EasyLoading.showError('image_not_selected'.tr());
      } else {
        String imagePath = imageFile.path;

        cardModel = CardModel(
          (p0) => p0
            ..cardNumber = cardModel?.cardNumber
            ..expDate = cardModel?.expDate
            ..color = null
            ..cardType = cardModel?.cardType?.toBuilder()
            ..blur = cardModel?.blur?.toBuilder()
            ..predefinedImage = null
            ..image = imagePath,
        );
        emit(state.copyWith(cardModel: cardModel));
      }
    }
  }

  /// Save Card
  Future<void> _saveCard(_SaveCard event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _repository.saveCard(event.cardModel);
    res.fold((error) {
      EasyLoading.showError(error.message);
    }, (data) {
      emit(state.copyWith(cardModel: event.cardModel));
      EasyLoading.showSuccess(data.message!);
      Navigator.pop(event.context);
    });
  }

  /// Get Card
  Future<void> _getCard(_GetCard event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _repository.getCard();
    res.fold((error) {
      EasyLoading.showError(error.message);
    }, (data) {
      emit(state.copyWith(cardModel: data));
      EasyLoading.dismiss();
    });
  }

  /// Remove Card
  Future<void> _removeCard(_RemoveCard event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _repository.removeCard();
    res.fold((error) {
      EasyLoading.showError(error.message);
    }, (data) {
      emit(state.copyWith(cardModel: null));
      EasyLoading.showSuccess(data?.message ?? "");
    });

  }
}
