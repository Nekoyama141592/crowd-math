import 'package:crowd_math/model/point_allocation/point_allocation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_answer.freezed.dart';
part 'center_answer.g.dart';

@freezed
abstract class CenterAnswer implements _$CenterAnswer {
  const CenterAnswer._();
  const factory CenterAnswer(
      {required String title,
      required String subject,
      required List<PointAllocation> pointAllocations}) = _CenterAnswer;
  factory CenterAnswer.fromJson(Map<String, dynamic> json) =>
      _$CenterAnswerFromJson(json);
}
