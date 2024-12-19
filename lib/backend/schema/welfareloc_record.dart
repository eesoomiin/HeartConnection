import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfarelocRecord extends FirestoreRecord {
  WelfarelocRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "loc" field.
  String? _loc;
  String get loc => _loc ?? '';
  bool hasLoc() => _loc != null;

  void _initializeFields() {
    _loc = snapshotData['loc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareloc');

  static Stream<WelfarelocRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfarelocRecord.fromSnapshot(s));

  static Future<WelfarelocRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfarelocRecord.fromSnapshot(s));

  static WelfarelocRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WelfarelocRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfarelocRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfarelocRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfarelocRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfarelocRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfarelocRecordData({
  String? loc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'loc': loc,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfarelocRecordDocumentEquality implements Equality<WelfarelocRecord> {
  const WelfarelocRecordDocumentEquality();

  @override
  bool equals(WelfarelocRecord? e1, WelfarelocRecord? e2) {
    return e1?.loc == e2?.loc;
  }

  @override
  int hash(WelfarelocRecord? e) => const ListEquality().hash([e?.loc]);

  @override
  bool isValidKey(Object? o) => o is WelfarelocRecord;
}
