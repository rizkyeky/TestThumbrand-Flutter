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
}