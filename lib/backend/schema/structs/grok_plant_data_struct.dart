// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrokPlantDataStruct extends BaseStruct {
  GrokPlantDataStruct({
    String? plantDescription,
    List<String>? controlRecommendations,
  })  : _plantDescription = plantDescription,
        _controlRecommendations = controlRecommendations;

  // "plantDescription" field.
  String? _plantDescription;
  String get plantDescription => _plantDescription ?? '';
  set plantDescription(String? val) => _plantDescription = val;
  bool hasPlantDescription() => _plantDescription != null;

  // "controlRecommendations" field.
  List<String>? _controlRecommendations;
  List<String> get controlRecommendations =>
      _controlRecommendations ?? const [];
  set controlRecommendations(List<String>? val) =>
      _controlRecommendations = val;
  void updateControlRecommendations(Function(List<String>) updateFn) =>
      updateFn(_controlRecommendations ??= []);
  bool hasControlRecommendations() => _controlRecommendations != null;

  static GrokPlantDataStruct fromMap(Map<String, dynamic> data) =>
      GrokPlantDataStruct(
        plantDescription: data['plantDescription'] as String?,
        controlRecommendations: getDataList(data['controlRecommendations']),
      );

  static GrokPlantDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GrokPlantDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'plantDescription': _plantDescription,
        'controlRecommendations': _controlRecommendations,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'plantDescription': serializeParam(
          _plantDescription,
          ParamType.String,
        ),
        'controlRecommendations': serializeParam(
          _controlRecommendations,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static GrokPlantDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GrokPlantDataStruct(
        plantDescription: deserializeParam(
          data['plantDescription'],
          ParamType.String,
          false,
        ),
        controlRecommendations: deserializeParam<String>(
          data['controlRecommendations'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'GrokPlantDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GrokPlantDataStruct &&
        plantDescription == other.plantDescription &&
        listEquality.equals(
            controlRecommendations, other.controlRecommendations);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([plantDescription, controlRecommendations]);
}

GrokPlantDataStruct createGrokPlantDataStruct({
  String? plantDescription,
}) =>
    GrokPlantDataStruct(
      plantDescription: plantDescription,
    );
