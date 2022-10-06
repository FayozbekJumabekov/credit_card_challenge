// GENERATED CODE - DO NOT MODIFY BY HAND

part of barber_sign_up_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CardModel> _$cardModelSerializer = new _$CardModelSerializer();
Serializer<CardTypeModel> _$cardTypeModelSerializer =
    new _$CardTypeModelSerializer();
Serializer<BlurModel> _$blurModelSerializer = new _$BlurModelSerializer();
Serializer<SuccessResponseModel> _$successResponseModelSerializer =
    new _$SuccessResponseModelSerializer();

class _$CardModelSerializer implements StructuredSerializer<CardModel> {
  @override
  final Iterable<Type> types = const [CardModel, _$CardModel];
  @override
  final String wireName = 'CardModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardNumber;
    if (value != null) {
      result
        ..add('cardNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expDate;
    if (value != null) {
      result
        ..add('expDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardType;
    if (value != null) {
      result
        ..add('cardType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CardTypeModel)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.predefinedImage;
    if (value != null) {
      result
        ..add('predefinedImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.blur;
    if (value != null) {
      result
        ..add('blur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BlurModel)));
    }
    return result;
  }

  @override
  CardModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cardNumber':
          result.cardNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expDate':
          result.expDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cardType':
          result.cardType.replace(serializers.deserialize(value,
              specifiedType: const FullType(CardTypeModel))! as CardTypeModel);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'predefinedImage':
          result.predefinedImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'blur':
          result.blur.replace(serializers.deserialize(value,
              specifiedType: const FullType(BlurModel))! as BlurModel);
          break;
      }
    }

    return result.build();
  }
}

class _$CardTypeModelSerializer implements StructuredSerializer<CardTypeModel> {
  @override
  final Iterable<Type> types = const [CardTypeModel, _$CardTypeModel];
  @override
  final String wireName = 'CardTypeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CardTypeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CardTypeModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardTypeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$BlurModelSerializer implements StructuredSerializer<BlurModel> {
  @override
  final Iterable<Type> types = const [BlurModel, _$BlurModel];
  @override
  final String wireName = 'BlurModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlurModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.x;
    if (value != null) {
      result
        ..add('x')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.y;
    if (value != null) {
      result
        ..add('y')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  BlurModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlurModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$SuccessResponseModelSerializer
    implements StructuredSerializer<SuccessResponseModel> {
  @override
  final Iterable<Type> types = const [
    SuccessResponseModel,
    _$SuccessResponseModel
  ];
  @override
  final String wireName = 'SuccessResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SuccessResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SuccessResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuccessResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CardModel extends CardModel {
  @override
  final String? id;
  @override
  final String? cardNumber;
  @override
  final String? expDate;
  @override
  final CardTypeModel? cardType;
  @override
  final String? image;
  @override
  final String? predefinedImage;
  @override
  final int? color;
  @override
  final BlurModel? blur;

  factory _$CardModel([void Function(CardModelBuilder)? updates]) =>
      (new CardModelBuilder()..update(updates))._build();

  _$CardModel._(
      {this.id,
      this.cardNumber,
      this.expDate,
      this.cardType,
      this.image,
      this.predefinedImage,
      this.color,
      this.blur})
      : super._();

  @override
  CardModel rebuild(void Function(CardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardModelBuilder toBuilder() => new CardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CardModel &&
        id == other.id &&
        cardNumber == other.cardNumber &&
        expDate == other.expDate &&
        cardType == other.cardType &&
        image == other.image &&
        predefinedImage == other.predefinedImage &&
        color == other.color &&
        blur == other.blur;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), cardNumber.hashCode),
                            expDate.hashCode),
                        cardType.hashCode),
                    image.hashCode),
                predefinedImage.hashCode),
            color.hashCode),
        blur.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CardModel')
          ..add('id', id)
          ..add('cardNumber', cardNumber)
          ..add('expDate', expDate)
          ..add('cardType', cardType)
          ..add('image', image)
          ..add('predefinedImage', predefinedImage)
          ..add('color', color)
          ..add('blur', blur))
        .toString();
  }
}

class CardModelBuilder implements Builder<CardModel, CardModelBuilder> {
  _$CardModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  String? _expDate;
  String? get expDate => _$this._expDate;
  set expDate(String? expDate) => _$this._expDate = expDate;

  CardTypeModelBuilder? _cardType;
  CardTypeModelBuilder get cardType =>
      _$this._cardType ??= new CardTypeModelBuilder();
  set cardType(CardTypeModelBuilder? cardType) => _$this._cardType = cardType;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _predefinedImage;
  String? get predefinedImage => _$this._predefinedImage;
  set predefinedImage(String? predefinedImage) =>
      _$this._predefinedImage = predefinedImage;

  int? _color;
  int? get color => _$this._color;
  set color(int? color) => _$this._color = color;

  BlurModelBuilder? _blur;
  BlurModelBuilder get blur => _$this._blur ??= new BlurModelBuilder();
  set blur(BlurModelBuilder? blur) => _$this._blur = blur;

  CardModelBuilder();

  CardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _cardNumber = $v.cardNumber;
      _expDate = $v.expDate;
      _cardType = $v.cardType?.toBuilder();
      _image = $v.image;
      _predefinedImage = $v.predefinedImage;
      _color = $v.color;
      _blur = $v.blur?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CardModel;
  }

  @override
  void update(void Function(CardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CardModel build() => _build();

  _$CardModel _build() {
    _$CardModel _$result;
    try {
      _$result = _$v ??
          new _$CardModel._(
              id: id,
              cardNumber: cardNumber,
              expDate: expDate,
              cardType: _cardType?.build(),
              image: image,
              predefinedImage: predefinedImage,
              color: color,
              blur: _blur?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cardType';
        _cardType?.build();

        _$failedField = 'blur';
        _blur?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CardModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CardTypeModel extends CardTypeModel {
  @override
  final String? name;
  @override
  final String? image;

  factory _$CardTypeModel([void Function(CardTypeModelBuilder)? updates]) =>
      (new CardTypeModelBuilder()..update(updates))._build();

  _$CardTypeModel._({this.name, this.image}) : super._();

  @override
  CardTypeModel rebuild(void Function(CardTypeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardTypeModelBuilder toBuilder() => new CardTypeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CardTypeModel && name == other.name && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CardTypeModel')
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class CardTypeModelBuilder
    implements Builder<CardTypeModel, CardTypeModelBuilder> {
  _$CardTypeModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  CardTypeModelBuilder();

  CardTypeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CardTypeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CardTypeModel;
  }

  @override
  void update(void Function(CardTypeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CardTypeModel build() => _build();

  _$CardTypeModel _build() {
    final _$result = _$v ?? new _$CardTypeModel._(name: name, image: image);
    replace(_$result);
    return _$result;
  }
}

class _$BlurModel extends BlurModel {
  @override
  final double? x;
  @override
  final double? y;

  factory _$BlurModel([void Function(BlurModelBuilder)? updates]) =>
      (new BlurModelBuilder()..update(updates))._build();

  _$BlurModel._({this.x, this.y}) : super._();

  @override
  BlurModel rebuild(void Function(BlurModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlurModelBuilder toBuilder() => new BlurModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlurModel && x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, x.hashCode), y.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlurModel')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class BlurModelBuilder implements Builder<BlurModel, BlurModelBuilder> {
  _$BlurModel? _$v;

  double? _x;
  double? get x => _$this._x;
  set x(double? x) => _$this._x = x;

  double? _y;
  double? get y => _$this._y;
  set y(double? y) => _$this._y = y;

  BlurModelBuilder();

  BlurModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlurModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlurModel;
  }

  @override
  void update(void Function(BlurModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlurModel build() => _build();

  _$BlurModel _build() {
    final _$result = _$v ?? new _$BlurModel._(x: x, y: y);
    replace(_$result);
    return _$result;
  }
}

class _$SuccessResponseModel extends SuccessResponseModel {
  @override
  final String? message;

  factory _$SuccessResponseModel(
          [void Function(SuccessResponseModelBuilder)? updates]) =>
      (new SuccessResponseModelBuilder()..update(updates))._build();

  _$SuccessResponseModel._({this.message}) : super._();

  @override
  SuccessResponseModel rebuild(
          void Function(SuccessResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessResponseModelBuilder toBuilder() =>
      new SuccessResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessResponseModel && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessResponseModel')
          ..add('message', message))
        .toString();
  }
}

class SuccessResponseModelBuilder
    implements Builder<SuccessResponseModel, SuccessResponseModelBuilder> {
  _$SuccessResponseModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SuccessResponseModelBuilder();

  SuccessResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessResponseModel;
  }

  @override
  void update(void Function(SuccessResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessResponseModel build() => _build();

  _$SuccessResponseModel _build() {
    final _$result = _$v ?? new _$SuccessResponseModel._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
