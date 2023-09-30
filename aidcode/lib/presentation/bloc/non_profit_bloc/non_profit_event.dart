part of 'non_profit_bloc.dart';

@freezed
class NonProfitEvent with _$NonProfitEvent {
  const factory NonProfitEvent.init() = _Started;
  const factory NonProfitEvent.putNonProfit({required NonProfit nonProfit}) =
      _PutNonProfit;
  const factory NonProfitEvent.getNonProfitsProjects(
      {required String nonProfitId}) = _GetNonProfitsProjects;
}
