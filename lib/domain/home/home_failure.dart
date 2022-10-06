import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failure.freezed.dart';

@freezed
abstract class HomeFailure with _$HomeFailure {
  const factory HomeFailure.noCard({
    required String message,
  }) = NoCard;

  const factory HomeFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory HomeFailure.unknown({
    required String message,
  }) = Unknown;
}
