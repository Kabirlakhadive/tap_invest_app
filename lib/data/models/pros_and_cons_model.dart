import 'package:freezed_annotation/freezed_annotation.dart';

part 'pros_and_cons_model.freezed.dart';
part 'pros_and_cons_model.g.dart';

@freezed
class ProsAndConsModel with _$ProsAndConsModel {
  const factory ProsAndConsModel({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndConsModel;

  factory ProsAndConsModel.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsModelFromJson(json);
}
