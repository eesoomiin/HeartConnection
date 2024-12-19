import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareType7Record extends FirestoreRecord {
  WelfareType7Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type7" field.
  String? _type7;
  String get type7 => _type7 ?? '';
  bool hasType7() => _type7 != null;

  void _initializeFields() {
    _type7 = snapshotData['type7'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfareType7');

  static Stream<WelfareType7Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareType7Record.fromSnapshot(s));

  static Future<WelfareType7Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareType7Record.fromSnapshot(s));

  static WelfareType7Record fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareType7Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareType7Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareType7Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareType7Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareType7Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareType7RecordData({
  String? type7,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type7': type7,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareType7RecordDocumentEquality
    implements Equality<WelfareType7Record> {
  const WelfareType7RecordDocumentEquality();

  @override
  bool equals(WelfareType7Record? e1, WelfareType7Record? e2) {
    return e1?.type7 == e2?.type7;
  }

  @override
  int hash(WelfareType7Record? e) => const ListEquality().hash([e?.type7]);

  @override
  bool isValidKey(Object? o) => o is WelfareType7Record;
}
