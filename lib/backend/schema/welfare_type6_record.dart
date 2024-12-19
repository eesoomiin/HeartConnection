import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType6Record extends FirestoreRecord {
  WelfareType6Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type6" field.
  String? _type6;
  String get type6 => _type6 ?? '';
  bool hasType6() => _type6 != null;

  void _initializeFields() {
    _type6 = snapshotData['type6'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType6');

  static Stream<WelfareType6Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType6Record.fromSnapshot(s));

  static Future<WelfareType6Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType6Record.fromSnapshot(s));

  static WelfareType6Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType6Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType6Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType6Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType6Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType6Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType6RecordData({
  String? type6,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type6': type6,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType6RecordDocumentEquality
    implements Equality<WelfareType6Record> {
  const WelfareType6RecordDocumentEquality();

  @override
  bool equals(WelfareType6Record? e1, WelfareType6Record? e2) {
    return e1?.type6 == e2?.type6;
  }

  @override
  int hash(WelfareType6Record? e) => const ListEquality().hash([e?.type6]);

  @override
  bool isValidKey(Object? o) => o is WelfareType6Record;
}
