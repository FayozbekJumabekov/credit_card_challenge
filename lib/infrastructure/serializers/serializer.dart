import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';

part 'serializer.g.dart';

@SerializersFor([
  CardModel,
  CardTypeModel,
  SuccessResponseModel,
  BlurModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
