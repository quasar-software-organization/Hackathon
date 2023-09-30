part of 'non_profit_bloc.dart';

enum NonProfitStatus { none, loading, loaded }

@freezed
class NonProfitState with _$NonProfitState {
  const factory NonProfitState({
    @Default(false) bool hasInitialized,
    @Default(NonProfitStatus.none) NonProfitStatus status,
    @Default([]) List<Project> projects,
    NonProfit? nonProfit,
  }) = _NonProfitState;
}
