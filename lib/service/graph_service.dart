part of 'service.dart';

class GraphService {
  
  final Map<String, int> _pie = {};
  Map<String, int> get pie => _pie;

  final Map<String, Map<String, int>> _bar = {};
  Map<String, Map<String, int>> get bar => _bar;

  CollectionReference _graphCollection;

  Future<void> init() async {
    await Firebase.initializeApp();
    _graphCollection = FirebaseFirestore.instance.collection('graph');
    
    await _getPie();
    await _getBar();
  }

  Future<void> _getPie() async {
    final DocumentSnapshot snapshot = await _graphCollection
      .doc('pie').get();
    _pie.addAll(Map<String, int>.from(snapshot.data()));
  }

  Future<void> _getBar() async {
    final DocumentSnapshot snapshot = await _graphCollection
      .doc('bar').get();

    final Map<String, Map<String, int>> data = {};

    snapshot.data().forEach((key, value) {
      data[key] = Map<String, int>.from(value as Map);
    });
    
    _bar.addAll(data);
  }

  Stream<Map<String, int>> streamPieData() {
    return _graphCollection.doc('pie').snapshots()
      .map((doc) => Map<String, int>.from(doc.data()));
  }

  Stream<Map<String, Map<String, int>>> streamBarData() {
    return _graphCollection.doc('bar').snapshots()
      .map((snapshot) {
        final Map<String, Map<String, int>> data = {};

        snapshot.data().forEach((key, value) {
          data[key] = Map<String, int>.from(value as Map);
        });

        return data;
      });
  }
}