enum CardTypesEnum {
  visa,
  uzCard,
  humo,
  defaultCard,
}

extension GetCardTypes on CardTypesEnum {
  String get getCardName {
    switch (this) {
      case CardTypesEnum.visa:
        return 'Visa';
      case CardTypesEnum.uzCard:
        return 'UzCard';
      case CardTypesEnum.humo:
        return "Humo";
      default:
        return '';
    }
  }
}
