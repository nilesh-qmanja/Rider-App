// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MasterRiderStruct extends FFFirebaseStruct {
  MasterRiderStruct({
    int? riderId,
    List<int>? businessId,
    String? phoneNumber,
    int? printerId,
    bool? onDuty,
    bool? isVerified,
    String? otp,
    String? username,
    String? rDModel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _riderId = riderId,
        _businessId = businessId,
        _phoneNumber = phoneNumber,
        _printerId = printerId,
        _onDuty = onDuty,
        _isVerified = isVerified,
        _otp = otp,
        _username = username,
        _rDModel = rDModel,
        super(firestoreUtilData);

  // "RiderId" field.
  int? _riderId;
  int get riderId => _riderId ?? 0;
  set riderId(int? val) => _riderId = val;

  void incrementRiderId(int amount) => riderId = riderId + amount;

  bool hasRiderId() => _riderId != null;

  // "BusinessId" field.
  List<int>? _businessId;
  List<int> get businessId => _businessId ?? const [];
  set businessId(List<int>? val) => _businessId = val;

  void updateBusinessId(Function(List<int>) updateFn) {
    updateFn(_businessId ??= []);
  }

  bool hasBusinessId() => _businessId != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "PrinterId" field.
  int? _printerId;
  int get printerId => _printerId ?? 0;
  set printerId(int? val) => _printerId = val;

  void incrementPrinterId(int amount) => printerId = printerId + amount;

  bool hasPrinterId() => _printerId != null;

  // "OnDuty" field.
  bool? _onDuty;
  bool get onDuty => _onDuty ?? false;
  set onDuty(bool? val) => _onDuty = val;

  bool hasOnDuty() => _onDuty != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  set isVerified(bool? val) => _isVerified = val;

  bool hasIsVerified() => _isVerified != null;

  // "Otp" field.
  String? _otp;
  String get otp => _otp ?? '';
  set otp(String? val) => _otp = val;

  bool hasOtp() => _otp != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "RDModel" field.
  String? _rDModel;
  String get rDModel => _rDModel ?? '';
  set rDModel(String? val) => _rDModel = val;

  bool hasRDModel() => _rDModel != null;

  static MasterRiderStruct fromMap(Map<String, dynamic> data) =>
      MasterRiderStruct(
        riderId: castToType<int>(data['RiderId']),
        businessId: getDataList(data['BusinessId']),
        phoneNumber: data['PhoneNumber'] as String?,
        printerId: castToType<int>(data['PrinterId']),
        onDuty: data['OnDuty'] as bool?,
        isVerified: data['isVerified'] as bool?,
        otp: data['Otp'] as String?,
        username: data['username'] as String?,
        rDModel: data['RDModel'] as String?,
      );

  static MasterRiderStruct? maybeFromMap(dynamic data) => data is Map
      ? MasterRiderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'RiderId': _riderId,
        'BusinessId': _businessId,
        'PhoneNumber': _phoneNumber,
        'PrinterId': _printerId,
        'OnDuty': _onDuty,
        'isVerified': _isVerified,
        'Otp': _otp,
        'username': _username,
        'RDModel': _rDModel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'RiderId': serializeParam(
          _riderId,
          ParamType.int,
        ),
        'BusinessId': serializeParam(
          _businessId,
          ParamType.int,
          isList: true,
        ),
        'PhoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'PrinterId': serializeParam(
          _printerId,
          ParamType.int,
        ),
        'OnDuty': serializeParam(
          _onDuty,
          ParamType.bool,
        ),
        'isVerified': serializeParam(
          _isVerified,
          ParamType.bool,
        ),
        'Otp': serializeParam(
          _otp,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'RDModel': serializeParam(
          _rDModel,
          ParamType.String,
        ),
      }.withoutNulls;

  static MasterRiderStruct fromSerializableMap(Map<String, dynamic> data) =>
      MasterRiderStruct(
        riderId: deserializeParam(
          data['RiderId'],
          ParamType.int,
          false,
        ),
        businessId: deserializeParam<int>(
          data['BusinessId'],
          ParamType.int,
          true,
        ),
        phoneNumber: deserializeParam(
          data['PhoneNumber'],
          ParamType.String,
          false,
        ),
        printerId: deserializeParam(
          data['PrinterId'],
          ParamType.int,
          false,
        ),
        onDuty: deserializeParam(
          data['OnDuty'],
          ParamType.bool,
          false,
        ),
        isVerified: deserializeParam(
          data['isVerified'],
          ParamType.bool,
          false,
        ),
        otp: deserializeParam(
          data['Otp'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        rDModel: deserializeParam(
          data['RDModel'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MasterRiderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MasterRiderStruct &&
        riderId == other.riderId &&
        listEquality.equals(businessId, other.businessId) &&
        phoneNumber == other.phoneNumber &&
        printerId == other.printerId &&
        onDuty == other.onDuty &&
        isVerified == other.isVerified &&
        otp == other.otp &&
        username == other.username &&
        rDModel == other.rDModel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        riderId,
        businessId,
        phoneNumber,
        printerId,
        onDuty,
        isVerified,
        otp,
        username,
        rDModel
      ]);
}

MasterRiderStruct createMasterRiderStruct({
  int? riderId,
  String? phoneNumber,
  int? printerId,
  bool? onDuty,
  bool? isVerified,
  String? otp,
  String? username,
  String? rDModel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MasterRiderStruct(
      riderId: riderId,
      phoneNumber: phoneNumber,
      printerId: printerId,
      onDuty: onDuty,
      isVerified: isVerified,
      otp: otp,
      username: username,
      rDModel: rDModel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MasterRiderStruct? updateMasterRiderStruct(
  MasterRiderStruct? masterRider, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    masterRider
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMasterRiderStructData(
  Map<String, dynamic> firestoreData,
  MasterRiderStruct? masterRider,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (masterRider == null) {
    return;
  }
  if (masterRider.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && masterRider.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final masterRiderData =
      getMasterRiderFirestoreData(masterRider, forFieldValue);
  final nestedData =
      masterRiderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = masterRider.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMasterRiderFirestoreData(
  MasterRiderStruct? masterRider, [
  bool forFieldValue = false,
]) {
  if (masterRider == null) {
    return {};
  }
  final firestoreData = mapToFirestore(masterRider.toMap());

  // Add any Firestore field values
  masterRider.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMasterRiderListFirestoreData(
  List<MasterRiderStruct>? masterRiders,
) =>
    masterRiders?.map((e) => getMasterRiderFirestoreData(e, true)).toList() ??
    [];
