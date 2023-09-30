import 'package:freezed_annotation/freezed_annotation.dart';

part 'non_profit.freezed.dart';
part 'non_profit.g.dart';

@freezed
class NonProfit with _$NonProfit {
  const factory NonProfit({
    required String id,
    required String name,
    required String missionAndVision,
  }) = _NonProfit;

  factory NonProfit.fromJson(Map<String, Object?> json) =>
      _$NonProfitFromJson(json);
}
