part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(null) CardModel? cardModel,
    @Default(null) String? cardImagePath,
    @Default(null) AssetEntity? assetEntity,
    @Default(false) bool? isUpdateCard,
    @Default(null) File? imageFile,
  }) = _HomeState;
}
