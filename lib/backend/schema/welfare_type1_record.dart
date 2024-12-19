import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType1Record extends FirestoreRecord {
  WelfareType1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type1" field.
  String? _type1;
  String get type1 => _type1 ?? '';
  bool hasType1() => _type1 != null;

  void _initializeFields() {
    _type1 = snapshotData['type1'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType1');

  static Stream<WelfareType1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType1Record.fromSnapshot(s));

  static Future<WelfareType1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType1Record.fromSnapshot(s));

  static WelfareType1Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType1RecordData({
  String? type1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type1': type1,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType1RecordDocumentEquality
    implements Equality<WelfareType1Record> {
  const WelfareType1RecordDocumentEquality();

  @override
  bool equals(WelfareType1Record? e1, WelfareType1Record? e2) {
    return e1?.type1 == e2?.type1;
  }

  @override
  int hash(WelfareType1Record? e) => const ListEquality().hash([e?.type1]);

  @override
  bool isValidKey(Object? o) => o is WelfareType1Record;
}
