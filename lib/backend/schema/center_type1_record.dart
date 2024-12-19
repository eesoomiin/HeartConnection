import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CenterType1Record extends FirestoreRecord {
  CenterType1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "centertype1" field.
  String? _centertype1;
  String get centertype1 => _centertype1 ?? '';
  bool hasCentertype1() => _centertype1 != null;

  void _initializeFields() {
    _centertype1 = snapshotData['centertype1'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centerType1');

  static Stream<CenterType1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CenterType1Record.fromSnapshot(s));

  static Future<CenterType1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CenterType1Record.fromSnapshot(s));

  static CenterType1Record fromSnapshot(DocumentSnapshot snapshot) =>
      CenterType1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CenterType1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CenterType1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CenterType1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CenterType1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCenterType1RecordData({
  String? centertype1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centertype1': centertype1,
    }.withoutNulls,
  );

  return firestoreData;
}

class CenterType1RecordDocumentEquality implements Equality<CenterType1Record> {
  const CenterType1RecordDocumentEquality();

  @override
  bool equals(CenterType1Record? e1, CenterType1Record? e2) {
    return e1?.centertype1 == e2?.centertype1;
  }

  @override
  int hash(CenterType1Record? e) => const ListEquality().hash([e?.centertype1]);

  @override
  bool isValidKey(Object? o) => o is CenterType1Record;
}
