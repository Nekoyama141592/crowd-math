import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_allocation.freezed.dart';
part 'point_allocation.g.dart';

@freezed
abstract class PointAllocation implements _$PointAllocation {
  const PointAllocation._();
  const factory PointAllocation(
      {required int point, required List<String> answers}) = _PointAllocation;
  factory PointAllocation.fromJson(Map<String, dynamic> json) =>
      _$PointAllocationFromJson(json);
}
