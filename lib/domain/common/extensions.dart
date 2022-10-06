import 'package:tenge_bank_task/domain/home/card_types.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import 'package:tenge_bank_task/presentation/style/app_icons.dart';

extension GetCardType on CardTypeModel {
  CardTypeModel findCardTypeModel(String cardNumber) {
    CardTypesEnum cardTypesEnum = getType(cardNumber);

    switch (cardTypesEnum) {
      case CardTypesEnum.visa:
        return CardTypeModel(
          (p0) => p0
            ..name = cardTypesEnum.getCardName
            ..image = AppIcons.masterCard,
        );
      case CardTypesEnum.uzCard:
        return CardTypeModel(
          (p0) => p0
            ..name = cardTypesEnum.getCardName
            ..image = AppIcons.uzCard,
        );
      case CardTypesEnum.humo:
        return CardTypeModel(
          (p0) => p0
            ..name = cardTypesEnum.getCardName
            ..image = AppIcons.humoCard,
        );
      case CardTypesEnum.defaultCard:
        return CardTypeModel(
          (p0) => p0
            ..name = cardTypesEnum.getCardName
            ..image = AppIcons.defaultCard,
        );
    }
  }

  CardTypesEnum getType(String cardNumber) {
    cardNumber = cardNumber.isNotEmpty ? cardNumber.substring(0, 1) : '';
    switch (cardNumber) {
      case '9':
        return CardTypesEnum.humo;
      case '8':
        return CardTypesEnum.uzCard;
      case '4':
        return CardTypesEnum.visa;
      default:
        return CardTypesEnum.defaultCard;
    }
  }
}
