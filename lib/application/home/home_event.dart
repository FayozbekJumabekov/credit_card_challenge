part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.checkAuth() = _CheckAuth;

  const factory HomeEvent.setCardNumber({
    required String cardNumber,
  }) = _SetCardNumber;

  const factory HomeEvent.setValidDate({
    required String date,
  }) = _SetValidDate;

  const factory HomeEvent.setColor({
    required int colorValue,
  }) = _SetColor;

  const factory HomeEvent.setPredefinedImage({
    required String assetValue,
  }) = _SetPredefinedImage;

  const factory HomeEvent.setBlur({
    required double x,
    required double y,
  }) = _SetBlur;

  const factory HomeEvent.uploadImage({
    required AssetEntity? pickedImage,
  }) = _UploadImage;

  const factory HomeEvent.saveCard({
    required CardModel cardModel,
    required BuildContext context,
  }) = _SaveCard;

  const factory HomeEvent.getCard() = _GetCard;

  const factory HomeEvent.removeCard() = _RemoveCard;
}
