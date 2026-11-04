// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeedDataStruct extends BaseStruct {
  WeedDataStruct({
    String? comName,
    String? sciName,
    String? orgImage,
    List<String>? images,
    String? description,
    String? natControl,
    String? chemControl,
    double? predictionScore,
    String? organ,
  })  : _comName = comName,
        _sciName = sciName,
        _orgImage = orgImage,
        _images = images,
        _description = description,
        _natControl = natControl,
        _chemControl = chemControl,
        _predictionScore = predictionScore,
        _organ = organ;

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

  // "orgImage" field.
  String? _orgImage;
  String get orgImage => _orgImage ?? '';
  set orgImage(String? val) => _orgImage = val;
  bool hasOrgImage() => _orgImage != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "natControl" field.
  String? _natControl;
  String get natControl => _natControl ?? '';
  set natControl(String? val) => _natControl = val;
  bool hasNatControl() => _natControl != null;

  // "chemControl" field.
  String? _chemControl;
  String get chemControl => _chemControl ?? '';
  set chemControl(String? val) => _chemControl = val;
  bool hasChemControl() => _chemControl != null;

  // "predictionScore" field.
  double? _predictionScore;
  double get predictionScore => _predictionScore ?? 0.0;
  set predictionScore(double? val) => _predictionScore = val;
  void incrementPredictionScore(double amount) =>
      _predictionScore = predictionScore + amount;
  bool hasPredictionScore() => _predictionScore != null;

  // "organ" field.
  String? _organ;
  String get organ => _organ ?? '';
  set organ(String? val) => _organ = val;
  bool hasOrgan() => _organ != null;

  static WeedDataStruct fromMap(Map<String, dynamic> data) => WeedDataStruct(
        comName: data['comName'] as String?,
        sciName: data['sciName'] as String?,
        orgImage: data['orgImage'] as String?,
        images: getDataList(data['images']),
        description: data['description'] as String?,
        natControl: data['natControl'] as String?,
        chemControl: data['chemControl'] as String?,
        predictionScore: castToType<double>(data['predictionScore']),
        organ: data['organ'] as String?,
      );

  static WeedDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? WeedDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'comName': _comName,
        'sciName': _sciName,
        'orgImage': _orgImage,
        'images': _images,
        'description': _description,
        'natControl': _natControl,
        'chemControl': _chemControl,
        'predictionScore': _predictionScore,
        'organ': _organ,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'comName': serializeParam(
          _comName,
          ParamType.String,
        ),
        'sciName': serializeParam(
          _sciName,
          ParamType.String,
        ),
        'orgImage': serializeParam(
          _orgImage,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'natControl': serializeParam(
          _natControl,
          ParamType.String,
        ),
        'chemControl': serializeParam(
          _chemControl,
          ParamType.String,
        ),
        'predictionScore': serializeParam(
          _predictionScore,
          ParamType.double,
        ),
        'organ': serializeParam(
          _organ,
          ParamType.String,
        ),
      }.withoutNulls;

  static WeedDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeedDataStruct(
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
        orgImage: deserializeParam(
          data['orgImage'],
          ParamType.String,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        natControl: deserializeParam(
          data['natControl'],
          ParamType.String,
          false,
        ),
        chemControl: deserializeParam(
          data['chemControl'],
          ParamType.String,
          false,
        ),
        predictionScore: deserializeParam(
          data['predictionScore'],
          ParamType.double,
          false,
        ),
        organ: deserializeParam(
          data['organ'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WeedDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WeedDataStruct &&
        comName == other.comName &&
        sciName == other.sciName &&
        orgImage == other.orgImage &&
        listEquality.equals(images, other.images) &&
        description == other.description &&
        natControl == other.natControl &&
        chemControl == other.chemControl &&
        predictionScore == other.predictionScore &&
        organ == other.organ;
  }

  @override
  int get hashCode => const ListEquality().hash([
        comName,
        sciName,
        orgImage,
        images,
        description,
        natControl,
        chemControl,
        predictionScore,
        organ
      ]);
}

WeedDataStruct createWeedDataStruct({
  String? comName,
  String? sciName,
  String? orgImage,
  String? description,
  String? natControl,
  String? chemControl,
  double? predictionScore,
  String? organ,
}) =>
    WeedDataStruct(
      comName: comName,
      sciName: sciName,
      orgImage: orgImage,
      description: description,
      natControl: natControl,
      chemControl: chemControl,
      predictionScore: predictionScore,
      organ: organ,
    );
