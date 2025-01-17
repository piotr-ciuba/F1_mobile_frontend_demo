import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circuit_table.freezed.dart';
part 'circuit_table.g.dart';

@freezed
class CircuitTable with _$CircuitTable {
  factory CircuitTable({
    @JsonKey(name: 'Circuits') List<Circuit>? circuits,
  }) = _CircuitTable;

  factory CircuitTable.fromJson(Map<String, dynamic> json) =>
      _$CircuitTableFromJson(json);
}
