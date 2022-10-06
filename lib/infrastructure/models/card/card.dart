library barber_sign_up_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../serializers/serializer.dart';

part 'card.g.dart';

abstract class CardModel implements Built<CardModel, CardModelBuilder> {
  CardModel._();

  factory CardModel([Function(CardModelBuilder b) updates]) = _$CardModel;

  String? get id;

  String? get cardNumber;

  String? get expDate;

  CardTypeModel? get cardType;

  String? get image;

  String? get predefinedImage;

  int? get color;

  BlurModel? get blur;

  String toJson() {
    return json.encode(serializers.serializeWith(CardModel.serializer, this));
  }

  static CardModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CardModel.serializer, json.decode(jsonString));
  }

  static Serializer<CardModel> get serializer => _$cardModelSerializer;
}

abstract class CardTypeModel
    implements Built<CardTypeModel, CardTypeModelBuilder> {
  CardTypeModel._();

  factory CardTypeModel([Function(CardTypeModelBuilder b) updates]) =
      _$CardTypeModel;

  String? get name;

  String? get image;

  static Serializer<CardTypeModel> get serializer => _$cardTypeModelSerializer;
}

abstract class BlurModel implements Built<BlurModel, BlurModelBuilder> {
  BlurModel._();

  factory BlurModel([Function(BlurModelBuilder b) updates]) = _$BlurModel;

  double? get x;

  double? get y;

  static Serializer<BlurModel> get serializer => _$blurModelSerializer;
}

abstract class SuccessResponseModel
    implements Built<SuccessResponseModel, SuccessResponseModelBuilder> {
  SuccessResponseModel._();

  factory SuccessResponseModel(
          [Function(SuccessResponseModelBuilder b) updates]) =
      _$SuccessResponseModel;

  String? get message;

  static Serializer<SuccessResponseModel> get serializer =>
      _$successResponseModelSerializer;
}
