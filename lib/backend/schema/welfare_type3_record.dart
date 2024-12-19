import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType3Record extends FirestoreRecord {
  WelfareType3Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type3" field.
  String? _type3;
  String get type3 => _type3 ?? '';
  bool hasType3() => _type3 != null;

  void _initializeFields() {
    _type3 = snapshotData['type3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType3');

  static Stream<WelfareType3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType3Record.fromSnapshot(s));

  static Future<WelfareType3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType3Record.fromSnapshot(s));

  static WelfareType3Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType3RecordData({
  String? type3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type3': type3,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType3RecordDocumentEquality
    implements Equality<WelfareType3Record> {
  const WelfareType3RecordDocumentEquality();

  @override
  bool equals(WelfareType3Record? e1, WelfareType3Record? e2) {
    return e1?.type3 == e2?.type3;
  }

  @override
  int hash(WelfareType3Record? e) => const ListEquality().hash([e?.type3]);

  @override
  bool isValidKey(Object? o) => o is WelfareType3Record;
}
