import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteRecord extends FirestoreRecord {
  FavoriteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "welfare_id" field.
  String? _welfareId;
  String get welfareId => _welfareId ?? '';
  bool hasWelfareId() => _welfareId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _welfareId = snapshotData['welfare_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorite');

  static Stream<FavoriteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoriteRecord.fromSnapshot(s));

  static Future<FavoriteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoriteRecord.fromSnapshot(s));

  static FavoriteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoriteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoriteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoriteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoriteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoriteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoriteRecordData({
  String? welfareId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'welfare_id': welfareId,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoriteRecordDocumentEquality implements Equality<FavoriteRecord> {
  const FavoriteRecordDocumentEquality();

  @override
  bool equals(FavoriteRecord? e1, FavoriteRecord? e2) {
    return e1?.welfareId == e2?.welfareId && e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(FavoriteRecord? e) =>
      const ListEquality().hash([e?.welfareId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is FavoriteRecord;
}
