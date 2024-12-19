import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WelfareRecord extends FirestoreRecord {
  WelfareRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  bool hasDetail() => _detail != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "cycle" field.
  String? _cycle;
  String get cycle => _cycle ?? '';
  bool hasCycle() => _cycle != null;

  // "offertype" field.
  String? _offertype;
  String get offertype => _offertype ?? '';
  bool hasOffertype() => _offertype != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "types" field.
  String? _types;
  String get types => _types ?? '';
  bool hasTypes() => _types != null;

  // "Eligibility" field.
  String? _eligibility;
  String get eligibility => _eligibility ?? '';
  bool hasEligibility() => _eligibility != null;

  // "criteria" field.
  String? _criteria;
  String get criteria => _criteria ?? '';
  bool hasCriteria() => _criteria != null;

  // "servicect" field.
  String? _servicect;
  String get servicect => _servicect ?? '';
  bool hasServicect() => _servicect != null;

  // "howtoapply" field.
  String? _howtoapply;
  String get howtoapply => _howtoapply ?? '';
  bool hasHowtoapply() => _howtoapply != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _detail = snapshotData['detail'] as String?;
    _department = snapshotData['department'] as String?;
    _cycle = snapshotData['cycle'] as String?;
    _offertype = snapshotData['offertype'] as String?;
    _contact = snapshotData['contact'] as String?;
    _link = snapshotData['link'] as String?;
    _types = snapshotData['types'] as String?;
    _eligibility = snapshotData['Eligibility'] as String?;
    _criteria = snapshotData['criteria'] as String?;
    _servicect = snapshotData['servicect'] as String?;
    _howtoapply = snapshotData['howtoapply'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('welfare');

  static Stream<WelfareRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WelfareRecord.fromSnapshot(s));

  static Future<WelfareRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WelfareRecord.fromSnapshot(s));

  static WelfareRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WelfareRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WelfareRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WelfareRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WelfareRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WelfareRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWelfareRecordData({
  String? title,
  String? detail,
  String? department,
  String? cycle,
  String? offertype,
  String? contact,
  String? link,
  String? types,
  String? eligibility,
  String? criteria,
  String? servicect,
  String? howtoapply,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'detail': detail,
      'department': department,
      'cycle': cycle,
      'offertype': offertype,
      'contact': contact,
      'link': link,
      'types': types,
      'Eligibility': eligibility,
      'criteria': criteria,
      'servicect': servicect,
      'howtoapply': howtoapply,
    }.withoutNulls,
  );

  return firestoreData;
}

class WelfareRecordDocumentEquality implements Equality<WelfareRecord> {
  const WelfareRecordDocumentEquality();

  @override
  bool equals(WelfareRecord? e1, WelfareRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.detail == e2?.detail &&
        e1?.department == e2?.department &&
        e1?.cycle == e2?.cycle &&
        e1?.offertype == e2?.offertype &&
        e1?.contact == e2?.contact &&
        e1?.link == e2?.link &&
        e1?.types == e2?.types &&
        e1?.eligibility == e2?.eligibility &&
        e1?.criteria == e2?.criteria &&
        e1?.servicect == e2?.servicect &&
        e1?.howtoapply == e2?.howtoapply;
  }

  @override
  int hash(WelfareRecord? e) => const ListEquality().hash([
        e?.title,
        e?.detail,
        e?.department,
        e?.cycle,
        e?.offertype,
        e?.contact,
        e?.link,
        e?.types,
        e?.eligibility,
        e?.criteria,
        e?.servicect,
        e?.howtoapply
      ]);

  @override
  bool isValidKey(Object? o) => o is WelfareRecord;
}
