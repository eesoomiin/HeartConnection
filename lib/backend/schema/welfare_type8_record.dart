import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType8Record extends FirestoreRecord {
  WelfareType8Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type8" field.
  String? _type8;
  String get type8 => _type8 ?? '';
  bool hasType8() => _type8 != null;

  void _initializeFields() {
    _type8 = snapshotData['type8'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType8');

  static Stream<WelfareType8Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType8Record.fromSnapshot(s));

  static Future<WelfareType8Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType8Record.fromSnapshot(s));

  static WelfareType8Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType8Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType8Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType8Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType8Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType8Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType8RecordData({
  String? type8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type8': type8,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType8RecordDocumentEquality
    implements Equality<WelfareType8Record> {
  const WelfareType8RecordDocumentEquality();

  @override
  bool equals(WelfareType8Record? e1, WelfareType8Record? e2) {
    return e1?.type8 == e2?.type8;
  }

  @override
  int hash(WelfareType8Record? e) => const ListEquality().hash([e?.type8]);

  @override
  bool isValidKey(Object? o) => o is WelfareType8Record;
}
