import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType2Record extends FirestoreRecord {
  WelfareType2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type2" field.
  String? _type2;
  String get type2 => _type2 ?? '';
  bool hasType2() => _type2 != null;

  void _initializeFields() {
    _type2 = snapshotData['type2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType2');

  static Stream<WelfareType2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType2Record.fromSnapshot(s));

  static Future<WelfareType2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType2Record.fromSnapshot(s));

  static WelfareType2Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType2RecordData({
  String? type2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type2': type2,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType2RecordDocumentEquality
    implements Equality<WelfareType2Record> {
  const WelfareType2RecordDocumentEquality();

  @override
  bool equals(WelfareType2Record? e1, WelfareType2Record? e2) {
    return e1?.type2 == e2?.type2;
  }

  @override
  int hash(WelfareType2Record? e) => const ListEquality().hash([e?.type2]);

  @override
  bool isValidKey(Object? o) => o is WelfareType2Record;
}
