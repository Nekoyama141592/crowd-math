import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_statistic_result.freezed.dart';
part 'center_statistic_result.g.dart';

@freezed
abstract class CenterStatisticResult implements _$CenterStatisticResult {
  const CenterStatisticResult._();
  const factory CenterStatisticResult(
      {@Default(1.0) double average,
      @Default("") String subject,
      @Default(1.0) double standardDeviation}) = _CenterStatisticResult;
  factory CenterStatisticResult.fromJson(Map<String, dynamic> json) =>
      _$CenterStatisticResultFromJson(json);
}
