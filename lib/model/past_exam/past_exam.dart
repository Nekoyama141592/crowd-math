import 'package:freezed_annotation/freezed_annotation.dart';

part 'past_exam.freezed.dart';
part 'past_exam.g.dart';

@freezed
abstract class PastExam implements _$PastExam {
  const factory PastExam(
      {required String title,
      required String path,
      required String type}) = _PastExam;
  factory PastExam.fromJson(Map<String, dynamic> json) =>
      _$PastExamFromJson(json);
}
