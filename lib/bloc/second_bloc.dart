part of 'bloc.dart';

class SecondBloc implements Bloc {

  DummyService dummy = locator.get<DummyService>();

  @override
  void dispose() {}

  @override
  void init() {}

  List<Map<String, dynamic>> getDataDummies() {
    return dummy.thumbServices;
  }
}