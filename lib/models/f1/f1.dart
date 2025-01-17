import 'package:f1_mobile_frontend_demo/models/mr_data/mr_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'f1.freezed.dart';
part 'f1.g.dart';

@freezed
class F1 with _$F1 {
  factory F1({
    @JsonKey(name: 'MRData') MrData? mrData,
  }) = _F1;

  factory F1.fromJson(Map<String, dynamic> json) => _$F1FromJson(json);
}
