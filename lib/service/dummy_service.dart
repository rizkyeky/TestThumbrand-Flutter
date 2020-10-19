part of 'service.dart';

class DummyService {
  final List<Map<String, dynamic>> _thumbServices = [{
    'title': '',
    'price': 0,
    'duration': 0,
    'percent': 0,
  }];
  List<Map<String, dynamic>> get thumbServices => _thumbServices;
}