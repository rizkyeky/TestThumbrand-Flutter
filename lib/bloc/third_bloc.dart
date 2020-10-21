part of 'bloc.dart';

class ThirdBloc implements Bloc {

  final GraphService _graphService = locator.get<GraphService>();

  @override
  void dispose() {}

  @override
  void init() {}

  Map<String, int> getPieFromService() {
    return _graphService.pie;
  }

  Map<String, Map<String, int>> getBarFromService() {
    return _graphService.bar;
  }

  Stream<Map<String, int>> streamPieFromService() {
    return _graphService.streamPieData();
  }

  Stream<Map<String, Map<String, int>>> streamBarFromService() {
    return _graphService.streamBarData();
  }
}