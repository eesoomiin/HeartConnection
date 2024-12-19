import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CenterType4Record extends FirestoreRecord {
  CenterType4Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "centertype4" field.
  String? _centertype4;
  String get centertype4 => _centertype4 ?? '';
  bool hasCentertype4() => _centertype4 != null;

  void _initializeFields() {
    _centertype4 = snapshotData['centertype4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centerType4');

  static Stream<CenterType4Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CenterType4Record.fromSnapshot(s));

  static Future<CenterType4Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CenterType4Record.fromSnapshot(s));

  static CenterType4Record fromSnapshot(DocumentSnapshot snapshot) =>
      CenterType4Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CenterType4Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CenterType4Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CenterType4Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CenterType4Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCenterType4RecordData({
  String? centertype4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centertype4': centertype4,
    }.withoutNulls,
  );

  return firestoreData;
}

class CenterType4RecordDocumentEquality implements Equality<CenterType4Record> {
  const CenterType4RecordDocumentEquality();

  @override
  bool equals(CenterType4Record? e1, CenterType4Record? e2) {
    return e1?.centertype4 == e2?.centertype4;
  }

  @override
  int hash(CenterType4Record? e) => const ListEquality().hash([e?.centertype4]);

  @override
  bool isValidKey(Object? o) => o is CenterType4Record;
}
