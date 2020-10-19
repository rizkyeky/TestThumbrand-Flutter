part of 'service.dart';

class DummyService {
  final List<Map<String, dynamic>> _thumbServices = [
    {
      'title': 'THUMBRAND SERVICE',
      'price': 300,
      'duration': 3,
      'percent': 100,
    },
    {
      'title': 'THUMBRAND SERVICE',
      'price': 100,
      'duration': 5,
      'percent': 100,
    },
    {
      'title': 'THUMBRAND SERVICE',
      'price': 400,
      'duration': 2,
      'percent': 100,
    },
  ];
  List<Map<String, dynamic>> get thumbServices => _thumbServices;
}