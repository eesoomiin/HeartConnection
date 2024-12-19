import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CenterType3Record extends FirestoreRecord {
  CenterType3Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "centertype3" field.
  String? _centertype3;
  String get centertype3 => _centertype3 ?? '';
  bool hasCentertype3() => _centertype3 != null;

  void _initializeFields() {
    _centertype3 = snapshotData['centertype3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centerType3');

  static Stream<CenterType3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CenterType3Record.fromSnapshot(s));

  static Future<CenterType3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CenterType3Record.fromSnapshot(s));

  static CenterType3Record fromSnapshot(DocumentSnapshot snapshot) =>
      CenterType3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CenterType3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CenterType3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CenterType3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CenterType3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCenterType3RecordData({
  String? centertype3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centertype3': centertype3,
    }.withoutNulls,
  );

  return firestoreData;
}

class CenterType3RecordDocumentEquality implements Equality<CenterType3Record> {
  const CenterType3RecordDocumentEquality();

  @override
  bool equals(CenterType3Record? e1, CenterType3Record? e2) {
    return e1?.centertype3 == e2?.centertype3;
  }

  @override
  int hash(CenterType3Record? e) => const ListEquality().hash([e?.centertype3]);

  @override
  bool isValidKey(Object? o) => o is CenterType3Record;
}
