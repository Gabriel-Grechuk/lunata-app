import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  LatLng? _position = LatLng(-24.0407865, -52.3517281);
  LatLng? get position => _position;
  set position(LatLng? value) {
    _position = value;
  }

  String _lat = '-24.0407865';
  String get lat => _lat;
  set lat(String value) {
    _lat = value;
  }

  String _lng = '-52.3517281';
  String get lng => _lng;
  set lng(String value) {
    _lng = value;
  }

  List<int> _xGraph = [];
  List<int> get xGraph => _xGraph;
  set xGraph(List<int> value) {
    _xGraph = value;
  }

  void addToXGraph(int value) {
    xGraph.add(value);
  }

  void removeFromXGraph(int value) {
    xGraph.remove(value);
  }

  void removeAtIndexFromXGraph(int index) {
    xGraph.removeAt(index);
  }

  void updateXGraphAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    xGraph[index] = updateFn(_xGraph[index]);
  }

  void insertAtIndexInXGraph(int index, int value) {
    xGraph.insert(index, value);
  }

  List<int> _yGraph = [];
  List<int> get yGraph => _yGraph;
  set yGraph(List<int> value) {
    _yGraph = value;
  }

  void addToYGraph(int value) {
    yGraph.add(value);
  }

  void removeFromYGraph(int value) {
    yGraph.remove(value);
  }

  void removeAtIndexFromYGraph(int index) {
    yGraph.removeAt(index);
  }

  void updateYGraphAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    yGraph[index] = updateFn(_yGraph[index]);
  }

  void insertAtIndexInYGraph(int index, int value) {
    yGraph.insert(index, value);
  }
}
