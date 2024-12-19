import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType5Record extends FirestoreRecord {
  WelfareType5Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type5" field.
  String? _type5;
  String get type5 => _type5 ?? '';
  bool hasType5() => _type5 != null;

  void _initializeFields() {
    _type5 = snapshotData['type5'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType5');

  static Stream<WelfareType5Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType5Record.fromSnapshot(s));

  static Future<WelfareType5Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType5Record.fromSnapshot(s));

  static WelfareType5Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType5Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType5Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType5Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType5Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType5Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType5RecordData({
  String? type5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type5': type5,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType5RecordDocumentEquality
    implements Equality<WelfareType5Record> {
  const WelfareType5RecordDocumentEquality();

  @override
  bool equals(WelfareType5Record? e1, WelfareType5Record? e2) {
    return e1?.type5 == e2?.type5;
  }

  @override
  int hash(WelfareType5Record? e) => const ListEquality().hash([e?.type5]);

  @override
  bool isValidKey(Object? o) => o is WelfareType5Record;
}
