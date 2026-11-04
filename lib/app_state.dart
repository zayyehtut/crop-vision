import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isConfirmed = false;
  bool get isConfirmed => _isConfirmed;
  set isConfirmed(bool value) {
    _isConfirmed = value;
  }

  double _Score = 0.0;
  double get Score => _Score;
  set Score(double value) {
    _Score = value;
  }

  List<String> _ComName = [];
  List<String> get ComName => _ComName;
  set ComName(List<String> value) {
    _ComName = value;
  }

  void addToComName(String value) {
    _ComName.add(value);
  }

  void removeFromComName(String value) {
    _ComName.remove(value);
  }

  void removeAtIndexFromComName(int index) {
    _ComName.removeAt(index);
  }

  void updateComNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _ComName[index] = updateFn(_ComName[index]);
  }

  void insertAtIndexInComName(int index, String value) {
    _ComName.insert(index, value);
  }

  String _SciName = '';
  String get SciName => _SciName;
  set SciName(String value) {
    _SciName = value;
  }

  List<String> _Stage = [];
  List<String> get Stage => _Stage;
  set Stage(List<String> value) {
    _Stage = value;
  }

  void addToStage(String value) {
    _Stage.add(value);
  }

  void removeFromStage(String value) {
    _Stage.remove(value);
  }

  void removeAtIndexFromStage(int index) {
    _Stage.removeAt(index);
  }

  void updateStageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Stage[index] = updateFn(_Stage[index]);
  }

  void insertAtIndexInStage(int index, String value) {
    _Stage.insert(index, value);
  }

  List<String> _Images = [];
  List<String> get Images => _Images;
  set Images(List<String> value) {
    _Images = value;
  }

  void addToImages(String value) {
    _Images.add(value);
  }

  void removeFromImages(String value) {
    _Images.remove(value);
  }

  void removeAtIndexFromImages(int index) {
    _Images.removeAt(index);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Images[index] = updateFn(_Images[index]);
  }

  void insertAtIndexInImages(int index, String value) {
    _Images.insert(index, value);
  }

  dynamic _PlantDetail;
  dynamic get PlantDetail => _PlantDetail;
  set PlantDetail(dynamic value) {
    _PlantDetail = value;
  }

  String _Description = '';
  String get Description => _Description;
  set Description(String value) {
    _Description = value;
  }

  List<String> _Recommendations = [];
  List<String> get Recommendations => _Recommendations;
  set Recommendations(List<String> value) {
    _Recommendations = value;
  }

  void addToRecommendations(String value) {
    _Recommendations.add(value);
  }

  void removeFromRecommendations(String value) {
    _Recommendations.remove(value);
  }

  void removeAtIndexFromRecommendations(int index) {
    _Recommendations.removeAt(index);
  }

  void updateRecommendationsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Recommendations[index] = updateFn(_Recommendations[index]);
  }

  void insertAtIndexInRecommendations(int index, String value) {
    _Recommendations.insert(index, value);
  }

  String _LocalUpload = '';
  String get LocalUpload => _LocalUpload;
  set LocalUpload(String value) {
    _LocalUpload = value;
  }

  List<WeedDataStruct> _WeedData = [];
  List<WeedDataStruct> get WeedData => _WeedData;
  set WeedData(List<WeedDataStruct> value) {
    _WeedData = value;
  }

  void addToWeedData(WeedDataStruct value) {
    _WeedData.add(value);
  }

  void removeFromWeedData(WeedDataStruct value) {
    _WeedData.remove(value);
  }

  void removeAtIndexFromWeedData(int index) {
    _WeedData.removeAt(index);
  }

  void updateWeedDataAtIndex(
    int index,
    WeedDataStruct Function(WeedDataStruct) updateFn,
  ) {
    _WeedData[index] = updateFn(_WeedData[index]);
  }

  void insertAtIndexInWeedData(int index, WeedDataStruct value) {
    _WeedData.insert(index, value);
  }
}
