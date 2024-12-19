import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CenterType2Record extends FirestoreRecord {
  CenterType2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "centertype2" field.
  String? _centertype2;
  String get centertype2 => _centertype2 ?? '';
  bool hasCentertype2() => _centertype2 != null;

  void _initializeFields() {
    _centertype2 = snapshotData['centertype2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centerType2');

  static Stream<CenterType2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CenterType2Record.fromSnapshot(s));

  static Future<CenterType2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CenterType2Record.fromSnapshot(s));

  static CenterType2Record fromSnapshot(DocumentSnapshot snapshot) =>
      CenterType2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CenterType2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CenterType2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CenterType2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CenterType2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCenterType2RecordData({
  String? centertype2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centertype2': centertype2,
    }.withoutNulls,
  );

  return firestoreData;
}

class CenterType2RecordDocumentEquality implements Equality<CenterType2Record> {
  const CenterType2RecordDocumentEquality();

  @override
  bool equals(CenterType2Record? e1, CenterType2Record? e2) {
    return e1?.centertype2 == e2?.centertype2;
  }

  @override
  int hash(CenterType2Record? e) => const ListEquality().hash([e?.centertype2]);

  @override
  bool isValidKey(Object? o) => o is CenterType2Record;
}
