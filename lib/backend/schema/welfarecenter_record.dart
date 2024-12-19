import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfarecenterRecord extends FirestoreRecord {
  WelfarecenterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "centerName" field.
  String? _centerName;
  String get centerName => _centerName ?? '';
  bool hasCenterName() => _centerName != null;

  // "centerTypes" field.
  String? _centerTypes;
  String get centerTypes => _centerTypes ?? '';
  bool hasCenterTypes() => _centerTypes != null;

  // "centerLocation" field.
  String? _centerLocation;
  String get centerLocation => _centerLocation ?? '';
  bool hasCenterLocation() => _centerLocation != null;

  // "centerUrl" field.
  String? _centerUrl;
  String get centerUrl => _centerUrl ?? '';
  bool hasCenterUrl() => _centerUrl != null;

  // "certerPic" field.
  String? _certerPic;
  String get certerPic => _certerPic ?? '';
  bool hasCerterPic() => _certerPic != null;

  // "centerPoint" field.
  String? _centerPoint;
  String get centerPoint => _centerPoint ?? '';
  bool hasCenterPoint() => _centerPoint != null;

  void _initializeFields() {
    _centerName = snapshotData['centerName'] as String?;
    _centerTypes = snapshotData['centerTypes'] as String?;
    _centerLocation = snapshotData['centerLocation'] as String?;
    _centerUrl = snapshotData['centerUrl'] as String?;
    _certerPic = snapshotData['certerPic'] as String?;
    _centerPoint = snapshotData['centerPoint'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Welfarecenter');

  static Stream<WelfarecenterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfarecenterRecord.fromSnapshot(s));

  static Future<WelfarecenterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfarecenterRecord.fromSnapshot(s));

  static WelfarecenterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WelfarecenterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfarecenterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfarecenterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfarecenterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfarecenterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfarecenterRecordData({
  String? centerName,
  String? centerTypes,
  String? centerLocation,
  String? centerUrl,
  String? certerPic,
  String? centerPoint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centerName': centerName,
      'centerTypes': centerTypes,
      'centerLocation': centerLocation,
      'centerUrl': centerUrl,
      'certerPic': certerPic,
      'centerPoint': centerPoint,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfarecenterRecordDocumentEquality
    implements Equality<WelfarecenterRecord> {
  const WelfarecenterRecordDocumentEquality();

  @override
  bool equals(WelfarecenterRecord? e1, WelfarecenterRecord? e2) {
    return e1?.centerName == e2?.centerName &&
        e1?.centerTypes == e2?.centerTypes &&
        e1?.centerLocation == e2?.centerLocation &&
        e1?.centerUrl == e2?.centerUrl &&
        e1?.certerPic == e2?.certerPic &&
        e1?.centerPoint == e2?.centerPoint;
  }

  @override
  int hash(WelfarecenterRecord? e) => const ListEquality().hash([
        e?.centerName,
        e?.centerTypes,
        e?.centerLocation,
        e?.centerUrl,
        e?.certerPic,
        e?.centerPoint
      ]);

  @override
  bool isValidKey(Object? o) => o is WelfarecenterRecord;
}
