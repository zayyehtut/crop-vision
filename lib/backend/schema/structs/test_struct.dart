// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestStruct extends BaseStruct {
  TestStruct({
    String? organ,
    String? predictionScore,
    List<String>? images,
    String? orgImage,
    String? chemControl,
    String? natControl,
    String? description,
    String? comName,
    String? sciName,
  })  : _organ = organ,
        _predictionScore = predictionScore,
        _images = images,
        _orgImage = orgImage,
        _chemControl = chemControl,
        _natControl = natControl,
        _description = description,
        _comName = comName,
        _sciName = sciName;

  // "organ" field.
  String? _organ;
  String get organ => _organ ?? '';
  set organ(String? val) => _organ = val;
  bool hasOrgan() => _organ != null;

  // "predictionScore" field.
  String? _predictionScore;
  String get predictionScore => _predictionScore ?? '';
  set predictionScore(String? val) => _predictionScore = val;
  bool hasPredictionScore() => _predictionScore != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  // "orgImage" field.
  String? _orgImage;
  String get orgImage => _orgImage ?? '';
  set orgImage(String? val) => _orgImage = val;
  bool hasOrgImage() => _orgImage != null;

  // "chemControl" field.
  String? _chemControl;
  String get chemControl => _chemControl ?? '';
  set chemControl(String? val) => _chemControl = val;
  bool hasChemControl() => _chemControl != null;

  // "natControl" field.
  String? _natControl;
  String get natControl => _natControl ?? '';
  set natControl(String? val) => _natControl = val;
  bool hasNatControl() => _natControl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "comName" field.
  String? _comName;
  String get comName => _comName ?? '';
  set comName(String? val) => _comName = val;
  bool hasComName() => _comName != null;

  // "sciName" field.
  String? _sciName;
  String get sciName => _sciName ?? '';
  set sciName(String? val) => _sciName = val;
  bool hasSciName() => _sciName != null;

  static TestStruct fromMap(Map<String, dynamic> data) => TestStruct(
        organ: data['organ'] as String?,
        predictionScore: data['predictionScore'] as String?,
        images: getDataList(data['images']),
        orgImage: data['orgImage'] as String?,
        chemControl: data['chemControl'] as String?,
        natControl: data['natControl'] as String?,
        description: data['description'] as String?,
        comName: data['comName'] as String?,
        sciName: data['sciName'] as String?,
      );

  static TestStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'organ': _organ,
        'predictionScore': _predictionScore,
        'images': _images,
        'orgImage': _orgImage,
        'chemControl': _chemControl,
        'natControl': _natControl,
        'description': _description,
        'comName': _comName,
        'sciName': _sciName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'organ': serializeParam(
          _organ,
          ParamType.String,
        ),
        'predictionScore': serializeParam(
          _predictionScore,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
        'orgImage': serializeParam(
          _orgImage,
          ParamType.String,
        ),
        'chemControl': serializeParam(
          _chemControl,
          ParamType.String,
        ),
        'natControl': serializeParam(
          _natControl,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'comName': serializeParam(
          _comName,
          ParamType.String,
        ),
        'sciName': serializeParam(
          _sciName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestStruct(
        organ: deserializeParam(
          data['organ'],
          ParamType.String,
          false,
        ),
        predictionScore: deserializeParam(
          data['predictionScore'],
          ParamType.String,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
        orgImage: deserializeParam(
          data['orgImage'],
          ParamType.String,
          false,
        ),
        chemControl: deserializeParam(
          data['chemControl'],
          ParamType.String,
          false,
        ),
        natControl: deserializeParam(
          data['natControl'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        comName: deserializeParam(
          data['comName'],
          ParamType.String,
          false,
        ),
        sciName: deserializeParam(
          data['sciName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TestStruct &&
        organ == other.organ &&
        predictionScore == other.predictionScore &&
        listEquality.equals(images, other.images) &&
        orgImage == other.orgImage &&
        chemControl == other.chemControl &&
        natControl == other.natControl &&
        description == other.description &&
        comName == other.comName &&
        sciName == other.sciName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        organ,
        predictionScore,
        images,
        orgImage,
        chemControl,
        natControl,
        description,
        comName,
        sciName
      ]);
}

TestStruct createTestStruct({
  String? organ,
  String? predictionScore,
  String? orgImage,
  String? chemControl,
  String? natControl,
  String? description,
  String? comName,
  String? sciName,
}) =>
    TestStruct(
      organ: organ,
      predictionScore: predictionScore,
      orgImage: orgImage,
      chemControl: chemControl,
      natControl: natControl,
      description: description,
      comName: comName,
      sciName: sciName,
    );
