import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _loggedin = prefs.getBool('ff_loggedin') ?? _loggedin;
    });
    _safeInit(() {
      _RiderID = prefs.getInt('ff_RiderID') ?? _RiderID;
    });
    _safeInit(() {
      _PrinterID = prefs.getInt('ff_PrinterID') ?? _PrinterID;
    });
    _safeInit(() {
      _PhoneNo = prefs.getString('ff_PhoneNo') ?? _PhoneNo;
    });
    _safeInit(() {
      _BusinessID = prefs.getInt('ff_BusinessID') ?? _BusinessID;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _Expirytoken = prefs.getString('ff_Expirytoken') ?? _Expirytoken;
    });
    _safeInit(() {
      _RiderUserName = prefs.getString('ff_RiderUserName') ?? _RiderUserName;
    });
    _safeInit(() {
      _RiderNumber = prefs.getString('ff_RiderNumber') ?? _RiderNumber;
    });
    _safeInit(() {
      _RiderName = prefs.getString('ff_RiderName') ?? _RiderName;
    });
    _safeInit(() {
      _tokenupdatedtime = prefs.containsKey('ff_tokenupdatedtime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_tokenupdatedtime')!)
          : _tokenupdatedtime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _duty = false;
  bool get duty => _duty;
  set duty(bool value) {
    _duty = value;
  }

  bool _orderaccept = false;
  bool get orderaccept => _orderaccept;
  set orderaccept(bool value) {
    _orderaccept = value;
  }

  int _orderId = 0;
  int get orderId => _orderId;
  set orderId(int value) {
    _orderId = value;
  }

  double _riderLat = 0.0;
  double get riderLat => _riderLat;
  set riderLat(double value) {
    _riderLat = value;
  }

  double _riderLong = 0.0;
  double get riderLong => _riderLong;
  set riderLong(double value) {
    _riderLong = value;
  }

  LatLng? _riderLocation;
  LatLng? get riderLocation => _riderLocation;
  set riderLocation(LatLng? value) {
    _riderLocation = value;
  }

  List<int> _orderlist = [];
  List<int> get orderlist => _orderlist;
  set orderlist(List<int> value) {
    _orderlist = value;
  }

  void addToOrderlist(int value) {
    orderlist.add(value);
  }

  void removeFromOrderlist(int value) {
    orderlist.remove(value);
  }

  void removeAtIndexFromOrderlist(int index) {
    orderlist.removeAt(index);
  }

  void updateOrderlistAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    orderlist[index] = updateFn(_orderlist[index]);
  }

  void insertAtIndexInOrderlist(int index, int value) {
    orderlist.insert(index, value);
  }

  List<int> _orderhistory = [];
  List<int> get orderhistory => _orderhistory;
  set orderhistory(List<int> value) {
    _orderhistory = value;
  }

  void addToOrderhistory(int value) {
    orderhistory.add(value);
  }

  void removeFromOrderhistory(int value) {
    orderhistory.remove(value);
  }

  void removeAtIndexFromOrderhistory(int index) {
    orderhistory.removeAt(index);
  }

  void updateOrderhistoryAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    orderhistory[index] = updateFn(_orderhistory[index]);
  }

  void insertAtIndexInOrderhistory(int index, int value) {
    orderhistory.insert(index, value);
  }

  String _id = '';
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  bool _loggedin = false;
  bool get loggedin => _loggedin;
  set loggedin(bool value) {
    _loggedin = value;
    prefs.setBool('ff_loggedin', value);
  }

  int _RiderID = 0;
  int get RiderID => _RiderID;
  set RiderID(int value) {
    _RiderID = value;
    prefs.setInt('ff_RiderID', value);
  }

  int _PrinterID = 0;
  int get PrinterID => _PrinterID;
  set PrinterID(int value) {
    _PrinterID = value;
    prefs.setInt('ff_PrinterID', value);
  }

  String _PhoneNo = '';
  String get PhoneNo => _PhoneNo;
  set PhoneNo(String value) {
    _PhoneNo = value;
    prefs.setString('ff_PhoneNo', value);
  }

  String _phoneOtp = '';
  String get phoneOtp => _phoneOtp;
  set phoneOtp(String value) {
    _phoneOtp = value;
  }

  String _newOtp = '';
  String get newOtp => _newOtp;
  set newOtp(String value) {
    _newOtp = value;
  }

  int _BusinessID = 0;
  int get BusinessID => _BusinessID;
  set BusinessID(int value) {
    _BusinessID = value;
    prefs.setInt('ff_BusinessID', value);
  }

  bool _isVerified = false;
  bool get isVerified => _isVerified;
  set isVerified(bool value) {
    _isVerified = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _Expirytoken = '';
  String get Expirytoken => _Expirytoken;
  set Expirytoken(String value) {
    _Expirytoken = value;
    prefs.setString('ff_Expirytoken', value);
  }

  int _Modelversion = 0;
  int get Modelversion => _Modelversion;
  set Modelversion(int value) {
    _Modelversion = value;
  }

  bool _Modelupdatecompulsory = false;
  bool get Modelupdatecompulsory => _Modelupdatecompulsory;
  set Modelupdatecompulsory(bool value) {
    _Modelupdatecompulsory = value;
  }

  bool _iosModel = false;
  bool get iosModel => _iosModel;
  set iosModel(bool value) {
    _iosModel = value;
  }

  bool _androidModel = false;
  bool get androidModel => _androidModel;
  set androidModel(bool value) {
    _androidModel = value;
  }

  int _ActiveOrderStatus = 0;
  int get ActiveOrderStatus => _ActiveOrderStatus;
  set ActiveOrderStatus(int value) {
    _ActiveOrderStatus = value;
  }

  List<int> _ActiveOrders = [];
  List<int> get ActiveOrders => _ActiveOrders;
  set ActiveOrders(List<int> value) {
    _ActiveOrders = value;
  }

  void addToActiveOrders(int value) {
    ActiveOrders.add(value);
  }

  void removeFromActiveOrders(int value) {
    ActiveOrders.remove(value);
  }

  void removeAtIndexFromActiveOrders(int index) {
    ActiveOrders.removeAt(index);
  }

  void updateActiveOrdersAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    ActiveOrders[index] = updateFn(_ActiveOrders[index]);
  }

  void insertAtIndexInActiveOrders(int index, int value) {
    ActiveOrders.insert(index, value);
  }

  String _customerName = '';
  String get customerName => _customerName;
  set customerName(String value) {
    _customerName = value;
  }

  bool _AcceptedByRider = false;
  bool get AcceptedByRider => _AcceptedByRider;
  set AcceptedByRider(bool value) {
    _AcceptedByRider = value;
  }

  bool _OrderPickedUp = false;
  bool get OrderPickedUp => _OrderPickedUp;
  set OrderPickedUp(bool value) {
    _OrderPickedUp = value;
  }

  bool _OrderDelivered = false;
  bool get OrderDelivered => _OrderDelivered;
  set OrderDelivered(bool value) {
    _OrderDelivered = value;
  }

  String _OrderDate = '';
  String get OrderDate => _OrderDate;
  set OrderDate(String value) {
    _OrderDate = value;
  }

  String _DeliveryType = '';
  String get DeliveryType => _DeliveryType;
  set DeliveryType(String value) {
    _DeliveryType = value;
  }

  String _DeliveryTime = '';
  String get DeliveryTime => _DeliveryTime;
  set DeliveryTime(String value) {
    _DeliveryTime = value;
  }

  String _FirstName = '';
  String get FirstName => _FirstName;
  set FirstName(String value) {
    _FirstName = value;
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
  }

  String _Phone = '';
  String get Phone => _Phone;
  set Phone(String value) {
    _Phone = value;
  }

  String _Address = '';
  String get Address => _Address;
  set Address(String value) {
    _Address = value;
  }

  String _BusinessName = '';
  String get BusinessName => _BusinessName;
  set BusinessName(String value) {
    _BusinessName = value;
  }

  String _PaymentType = '';
  String get PaymentType => _PaymentType;
  set PaymentType(String value) {
    _PaymentType = value;
  }

  double _SubTotal = 0.0;
  double get SubTotal => _SubTotal;
  set SubTotal(double value) {
    _SubTotal = value;
  }

  String _RiderUserName = '';
  String get RiderUserName => _RiderUserName;
  set RiderUserName(String value) {
    _RiderUserName = value;
    prefs.setString('ff_RiderUserName', value);
  }

  List<dynamic> _ActiveOrdersListView = [];
  List<dynamic> get ActiveOrdersListView => _ActiveOrdersListView;
  set ActiveOrdersListView(List<dynamic> value) {
    _ActiveOrdersListView = value;
  }

  void addToActiveOrdersListView(dynamic value) {
    ActiveOrdersListView.add(value);
  }

  void removeFromActiveOrdersListView(dynamic value) {
    ActiveOrdersListView.remove(value);
  }

  void removeAtIndexFromActiveOrdersListView(int index) {
    ActiveOrdersListView.removeAt(index);
  }

  void updateActiveOrdersListViewAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    ActiveOrdersListView[index] = updateFn(_ActiveOrdersListView[index]);
  }

  void insertAtIndexInActiveOrdersListView(int index, dynamic value) {
    ActiveOrdersListView.insert(index, value);
  }

  String _tracking = '';
  String get tracking => _tracking;
  set tracking(String value) {
    _tracking = value;
  }

  bool _outForDelivery = false;
  bool get outForDelivery => _outForDelivery;
  set outForDelivery(bool value) {
    _outForDelivery = value;
  }

  List<int> _businessId = [];
  List<int> get businessId => _businessId;
  set businessId(List<int> value) {
    _businessId = value;
  }

  void addToBusinessId(int value) {
    businessId.add(value);
  }

  void removeFromBusinessId(int value) {
    businessId.remove(value);
  }

  void removeAtIndexFromBusinessId(int index) {
    businessId.removeAt(index);
  }

  void updateBusinessIdAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    businessId[index] = updateFn(_businessId[index]);
  }

  void insertAtIndexInBusinessId(int index, int value) {
    businessId.insert(index, value);
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  int _phonestatus = 0;
  int get phonestatus => _phonestatus;
  set phonestatus(int value) {
    _phonestatus = value;
  }

  String _phonemessage = '';
  String get phonemessage => _phonemessage;
  set phonemessage(String value) {
    _phonemessage = value;
  }

  LatLng? _outletLocation;
  LatLng? get outletLocation => _outletLocation;
  set outletLocation(LatLng? value) {
    _outletLocation = value;
  }

  double _NewLat = 0.0;
  double get NewLat => _NewLat;
  set NewLat(double value) {
    _NewLat = value;
  }

  double _NewLong = 0.0;
  double get NewLong => _NewLong;
  set NewLong(double value) {
    _NewLong = value;
  }

  LatLng? _customerLocation;
  LatLng? get customerLocation => _customerLocation;
  set customerLocation(LatLng? value) {
    _customerLocation = value;
  }

  List<dynamic> _completedOrdersListView = [];
  List<dynamic> get completedOrdersListView => _completedOrdersListView;
  set completedOrdersListView(List<dynamic> value) {
    _completedOrdersListView = value;
  }

  void addToCompletedOrdersListView(dynamic value) {
    completedOrdersListView.add(value);
  }

  void removeFromCompletedOrdersListView(dynamic value) {
    completedOrdersListView.remove(value);
  }

  void removeAtIndexFromCompletedOrdersListView(int index) {
    completedOrdersListView.removeAt(index);
  }

  void updateCompletedOrdersListViewAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    completedOrdersListView[index] = updateFn(_completedOrdersListView[index]);
  }

  void insertAtIndexInCompletedOrdersListView(int index, dynamic value) {
    completedOrdersListView.insert(index, value);
  }

  String _RiderNumber = '';
  String get RiderNumber => _RiderNumber;
  set RiderNumber(String value) {
    _RiderNumber = value;
    prefs.setString('ff_RiderNumber', value);
  }

  String _RiderName = '';
  String get RiderName => _RiderName;
  set RiderName(String value) {
    _RiderName = value;
    prefs.setString('ff_RiderName', value);
  }

  dynamic _RiderDetails;
  dynamic get RiderDetails => _RiderDetails;
  set RiderDetails(dynamic value) {
    _RiderDetails = value;
  }

  List<int> _RiderBusinessID = [];
  List<int> get RiderBusinessID => _RiderBusinessID;
  set RiderBusinessID(List<int> value) {
    _RiderBusinessID = value;
  }

  void addToRiderBusinessID(int value) {
    RiderBusinessID.add(value);
  }

  void removeFromRiderBusinessID(int value) {
    RiderBusinessID.remove(value);
  }

  void removeAtIndexFromRiderBusinessID(int index) {
    RiderBusinessID.removeAt(index);
  }

  void updateRiderBusinessIDAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    RiderBusinessID[index] = updateFn(_RiderBusinessID[index]);
  }

  void insertAtIndexInRiderBusinessID(int index, int value) {
    RiderBusinessID.insert(index, value);
  }

  String _businessTelephone = '';
  String get businessTelephone => _businessTelephone;
  set businessTelephone(String value) {
    _businessTelephone = value;
  }

  String _authtoken = '';
  String get authtoken => _authtoken;
  set authtoken(String value) {
    _authtoken = value;
  }

  bool _isActive = false;
  bool get isActive => _isActive;
  set isActive(bool value) {
    _isActive = value;
  }

  bool _dutyonoff = false;
  bool get dutyonoff => _dutyonoff;
  set dutyonoff(bool value) {
    _dutyonoff = value;
  }

  DateTime? _tokenupdatedtime;
  DateTime? get tokenupdatedtime => _tokenupdatedtime;
  set tokenupdatedtime(DateTime? value) {
    _tokenupdatedtime = value;
    value != null
        ? prefs.setInt('ff_tokenupdatedtime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_tokenupdatedtime');
  }

  List<int> _removeorder = [0];
  List<int> get removeorder => _removeorder;
  set removeorder(List<int> value) {
    _removeorder = value;
  }

  void addToRemoveorder(int value) {
    removeorder.add(value);
  }

  void removeFromRemoveorder(int value) {
    removeorder.remove(value);
  }

  void removeAtIndexFromRemoveorder(int index) {
    removeorder.removeAt(index);
  }

  void updateRemoveorderAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    removeorder[index] = updateFn(_removeorder[index]);
  }

  void insertAtIndexInRemoveorder(int index, int value) {
    removeorder.insert(index, value);
  }

  MasterRiderStruct _currentRider = MasterRiderStruct();
  MasterRiderStruct get currentRider => _currentRider;
  set currentRider(MasterRiderStruct value) {
    _currentRider = value;
  }

  void updateCurrentRiderStruct(Function(MasterRiderStruct) updateFn) {
    updateFn(_currentRider);
  }

  List<ActiveOrderStruct> _AllActiveOrders = [];
  List<ActiveOrderStruct> get AllActiveOrders => _AllActiveOrders;
  set AllActiveOrders(List<ActiveOrderStruct> value) {
    _AllActiveOrders = value;
  }

  void addToAllActiveOrders(ActiveOrderStruct value) {
    AllActiveOrders.add(value);
  }

  void removeFromAllActiveOrders(ActiveOrderStruct value) {
    AllActiveOrders.remove(value);
  }

  void removeAtIndexFromAllActiveOrders(int index) {
    AllActiveOrders.removeAt(index);
  }

  void updateAllActiveOrdersAtIndex(
    int index,
    ActiveOrderStruct Function(ActiveOrderStruct) updateFn,
  ) {
    AllActiveOrders[index] = updateFn(_AllActiveOrders[index]);
  }

  void insertAtIndexInAllActiveOrders(int index, ActiveOrderStruct value) {
    AllActiveOrders.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
