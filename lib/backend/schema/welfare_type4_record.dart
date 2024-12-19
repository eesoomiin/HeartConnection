import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType4Record extends FirestoreRecord {
  WelfareType4Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type4" field.
  String? _type4;
  String get type4 => _type4 ?? '';
  bool hasType4() => _type4 != null;

  void _initializeFields() {
    _type4 = snapshotData['type4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType4');

  static Stream<WelfareType4Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType4Record.fromSnapshot(s));

  static Future<WelfareType4Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType4Record.fromSnapshot(s));

  static WelfareType4Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType4Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType4Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType4Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType4Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType4Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType4RecordData({
  String? type4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type4': type4,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType4RecordDocumentEquality
    implements Equality<WelfareType4Record> {
  const WelfareType4RecordDocumentEquality();

  @override
  bool equals(WelfareType4Record? e1, WelfareType4Record? e2) {
    return e1?.type4 == e2?.type4;
  }

  @override
  int hash(WelfareType4Record? e) => const ListEquality().hash([e?.type4]);

  @override
  bool isValidKey(Object? o) => o is WelfareType4Record;
}
