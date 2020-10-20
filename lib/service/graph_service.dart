part of 'service.dart';

class GraphService {
  
  final Map<String, int> _pie = {};
  Map<String, int> get pie => _pie;

  final Map<String, Map<String, int>> _bar = {};
  Map<String, Map<String, int>> get bar => _bar;

  final CollectionReference _graphCollection = FirebaseFirestore
    .instance.collection('graph');

  Future<void> init() async {
    await Firebase.initializeApp();
    await _getPie();
    await _getBar();
  }

  Future<void> _getPie() async {
    final DocumentSnapshot snapshot = await _graphCollection
      .doc('pie').get();
    _pie.addAll(snapshot.data() as Map<String, int>);
  }

  Future<void> _getBar() async {
    final DocumentSnapshot snapshot = await _graphCollection
      .doc('bar').get();
    _bar.addAll(snapshot.data() as Map<String, Map<String, int>>);
  }
}