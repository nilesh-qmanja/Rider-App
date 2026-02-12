// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BusinessDetailStruct extends FFFirebaseStruct {
  BusinessDetailStruct({
    int? id,
    String? name,
    String? address,
    String? postalCode,
    String? foodType,
    int? deliveryMinAmount,
    int? deliveryMaxDistance,
    int? deliveryFreeDistance,
    int? averageDeliveryTime,
    int? averageCollectionTime,
    int? deliveryFee,
    String? imgUrl,
    String? telephone,
    String? email,
    String? pswd,
    bool? businessClosed,
    String? announcement,
    String? currencysymbol,
    String? creditcardsurcharge,
    String? sendOrdersToPrinter,
    String? idTimeZone,
    String? disableDelivery,
    String? disableCollection,
    String? clientId,
    String? transactionPercentage,
    String? serviceCharge,
    bool? loyaltyEnabled,
    int? minimumLoyalityAmount,
    bool? cashEnabled,
    bool? cardEnabled,
    String? iOsappId,
    String? androidAppId,
    String? invoiceStartFrom,
    int? weeklyFee,
    String? address1,
    String? address2,
    String? address3,
    double? lat,
    double? long,
    String? nativeAppImage,
    String? appleUrl,
    String? businessName,
    String? businessAddress1,
    String? businessAddress2,
    String? businessAddress3,
    String? businessPostcode,
    String? nativeAppLogoUrl,
    String? webSiteBackImageUrl,
    bool? appOrderingAllowed,
    bool? tableOrderingAllowed,
    int? printerId,
    String? domain,
    String? andoidAppLink,
    String? appScreenshot,
    String? cssColor,
    String? printerLastConnected,
    String? createdOn,
    int? percentageCarges,
    double? fixedCharges,
    String? gplaceId,
    String? menuSyncOn,
    String? connectedRazorPayId,
    int? freeDeliveryAmount,
    String? pprestaurantId,
    String? ppmenuSharingCode,
    int? menuRates,
    bool? useNativePayment,
    double? newLat,
    double? newLong,
    double? oldLat,
    double? oldLong,
    String? newAddress,
    String? gtsnumber,
    String? fssai,
    String? paymentQrcodeLink,
    String? isUpcoming,
    int? packageCharges,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _address = address,
        _postalCode = postalCode,
        _foodType = foodType,
        _deliveryMinAmount = deliveryMinAmount,
        _deliveryMaxDistance = deliveryMaxDistance,
        _deliveryFreeDistance = deliveryFreeDistance,
        _averageDeliveryTime = averageDeliveryTime,
        _averageCollectionTime = averageCollectionTime,
        _deliveryFee = deliveryFee,
        _imgUrl = imgUrl,
        _telephone = telephone,
        _email = email,
        _pswd = pswd,
        _businessClosed = businessClosed,
        _announcement = announcement,
        _currencysymbol = currencysymbol,
        _creditcardsurcharge = creditcardsurcharge,
        _sendOrdersToPrinter = sendOrdersToPrinter,
        _idTimeZone = idTimeZone,
        _disableDelivery = disableDelivery,
        _disableCollection = disableCollection,
        _clientId = clientId,
        _transactionPercentage = transactionPercentage,
        _serviceCharge = serviceCharge,
        _loyaltyEnabled = loyaltyEnabled,
        _minimumLoyalityAmount = minimumLoyalityAmount,
        _cashEnabled = cashEnabled,
        _cardEnabled = cardEnabled,
        _iOsappId = iOsappId,
        _androidAppId = androidAppId,
        _invoiceStartFrom = invoiceStartFrom,
        _weeklyFee = weeklyFee,
        _address1 = address1,
        _address2 = address2,
        _address3 = address3,
        _lat = lat,
        _long = long,
        _nativeAppImage = nativeAppImage,
        _appleUrl = appleUrl,
        _businessName = businessName,
        _businessAddress1 = businessAddress1,
        _businessAddress2 = businessAddress2,
        _businessAddress3 = businessAddress3,
        _businessPostcode = businessPostcode,
        _nativeAppLogoUrl = nativeAppLogoUrl,
        _webSiteBackImageUrl = webSiteBackImageUrl,
        _appOrderingAllowed = appOrderingAllowed,
        _tableOrderingAllowed = tableOrderingAllowed,
        _printerId = printerId,
        _domain = domain,
        _andoidAppLink = andoidAppLink,
        _appScreenshot = appScreenshot,
        _cssColor = cssColor,
        _printerLastConnected = printerLastConnected,
        _createdOn = createdOn,
        _percentageCarges = percentageCarges,
        _fixedCharges = fixedCharges,
        _gplaceId = gplaceId,
        _menuSyncOn = menuSyncOn,
        _connectedRazorPayId = connectedRazorPayId,
        _freeDeliveryAmount = freeDeliveryAmount,
        _pprestaurantId = pprestaurantId,
        _ppmenuSharingCode = ppmenuSharingCode,
        _menuRates = menuRates,
        _useNativePayment = useNativePayment,
        _newLat = newLat,
        _newLong = newLong,
        _oldLat = oldLat,
        _oldLong = oldLong,
        _newAddress = newAddress,
        _gtsnumber = gtsnumber,
        _fssai = fssai,
        _paymentQrcodeLink = paymentQrcodeLink,
        _isUpcoming = isUpcoming,
        _packageCharges = packageCharges,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "PostalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  // "FoodType" field.
  String? _foodType;
  String get foodType => _foodType ?? '';
  set foodType(String? val) => _foodType = val;

  bool hasFoodType() => _foodType != null;

  // "DeliveryMinAmount" field.
  int? _deliveryMinAmount;
  int get deliveryMinAmount => _deliveryMinAmount ?? 0;
  set deliveryMinAmount(int? val) => _deliveryMinAmount = val;

  void incrementDeliveryMinAmount(int amount) =>
      deliveryMinAmount = deliveryMinAmount + amount;

  bool hasDeliveryMinAmount() => _deliveryMinAmount != null;

  // "DeliveryMaxDistance" field.
  int? _deliveryMaxDistance;
  int get deliveryMaxDistance => _deliveryMaxDistance ?? 0;
  set deliveryMaxDistance(int? val) => _deliveryMaxDistance = val;

  void incrementDeliveryMaxDistance(int amount) =>
      deliveryMaxDistance = deliveryMaxDistance + amount;

  bool hasDeliveryMaxDistance() => _deliveryMaxDistance != null;

  // "DeliveryFreeDistance" field.
  int? _deliveryFreeDistance;
  int get deliveryFreeDistance => _deliveryFreeDistance ?? 0;
  set deliveryFreeDistance(int? val) => _deliveryFreeDistance = val;

  void incrementDeliveryFreeDistance(int amount) =>
      deliveryFreeDistance = deliveryFreeDistance + amount;

  bool hasDeliveryFreeDistance() => _deliveryFreeDistance != null;

  // "AverageDeliveryTime" field.
  int? _averageDeliveryTime;
  int get averageDeliveryTime => _averageDeliveryTime ?? 0;
  set averageDeliveryTime(int? val) => _averageDeliveryTime = val;

  void incrementAverageDeliveryTime(int amount) =>
      averageDeliveryTime = averageDeliveryTime + amount;

  bool hasAverageDeliveryTime() => _averageDeliveryTime != null;

  // "AverageCollectionTime" field.
  int? _averageCollectionTime;
  int get averageCollectionTime => _averageCollectionTime ?? 0;
  set averageCollectionTime(int? val) => _averageCollectionTime = val;

  void incrementAverageCollectionTime(int amount) =>
      averageCollectionTime = averageCollectionTime + amount;

  bool hasAverageCollectionTime() => _averageCollectionTime != null;

  // "DeliveryFee" field.
  int? _deliveryFee;
  int get deliveryFee => _deliveryFee ?? 0;
  set deliveryFee(int? val) => _deliveryFee = val;

  void incrementDeliveryFee(int amount) => deliveryFee = deliveryFee + amount;

  bool hasDeliveryFee() => _deliveryFee != null;

  // "ImgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  set imgUrl(String? val) => _imgUrl = val;

  bool hasImgUrl() => _imgUrl != null;

  // "Telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  set telephone(String? val) => _telephone = val;

  bool hasTelephone() => _telephone != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Pswd" field.
  String? _pswd;
  String get pswd => _pswd ?? '';
  set pswd(String? val) => _pswd = val;

  bool hasPswd() => _pswd != null;

  // "BusinessClosed" field.
  bool? _businessClosed;
  bool get businessClosed => _businessClosed ?? false;
  set businessClosed(bool? val) => _businessClosed = val;

  bool hasBusinessClosed() => _businessClosed != null;

  // "Announcement" field.
  String? _announcement;
  String get announcement => _announcement ?? '';
  set announcement(String? val) => _announcement = val;

  bool hasAnnouncement() => _announcement != null;

  // "Currencysymbol" field.
  String? _currencysymbol;
  String get currencysymbol => _currencysymbol ?? '';
  set currencysymbol(String? val) => _currencysymbol = val;

  bool hasCurrencysymbol() => _currencysymbol != null;

  // "Creditcardsurcharge" field.
  String? _creditcardsurcharge;
  String get creditcardsurcharge => _creditcardsurcharge ?? '';
  set creditcardsurcharge(String? val) => _creditcardsurcharge = val;

  bool hasCreditcardsurcharge() => _creditcardsurcharge != null;

  // "SendOrdersToPrinter" field.
  String? _sendOrdersToPrinter;
  String get sendOrdersToPrinter => _sendOrdersToPrinter ?? '';
  set sendOrdersToPrinter(String? val) => _sendOrdersToPrinter = val;

  bool hasSendOrdersToPrinter() => _sendOrdersToPrinter != null;

  // "IdTimeZone" field.
  String? _idTimeZone;
  String get idTimeZone => _idTimeZone ?? '';
  set idTimeZone(String? val) => _idTimeZone = val;

  bool hasIdTimeZone() => _idTimeZone != null;

  // "DisableDelivery" field.
  String? _disableDelivery;
  String get disableDelivery => _disableDelivery ?? '';
  set disableDelivery(String? val) => _disableDelivery = val;

  bool hasDisableDelivery() => _disableDelivery != null;

  // "DisableCollection" field.
  String? _disableCollection;
  String get disableCollection => _disableCollection ?? '';
  set disableCollection(String? val) => _disableCollection = val;

  bool hasDisableCollection() => _disableCollection != null;

  // "ClientId" field.
  String? _clientId;
  String get clientId => _clientId ?? '';
  set clientId(String? val) => _clientId = val;

  bool hasClientId() => _clientId != null;

  // "TransactionPercentage" field.
  String? _transactionPercentage;
  String get transactionPercentage => _transactionPercentage ?? '';
  set transactionPercentage(String? val) => _transactionPercentage = val;

  bool hasTransactionPercentage() => _transactionPercentage != null;

  // "ServiceCharge" field.
  String? _serviceCharge;
  String get serviceCharge => _serviceCharge ?? '';
  set serviceCharge(String? val) => _serviceCharge = val;

  bool hasServiceCharge() => _serviceCharge != null;

  // "LoyaltyEnabled" field.
  bool? _loyaltyEnabled;
  bool get loyaltyEnabled => _loyaltyEnabled ?? false;
  set loyaltyEnabled(bool? val) => _loyaltyEnabled = val;

  bool hasLoyaltyEnabled() => _loyaltyEnabled != null;

  // "MinimumLoyalityAmount" field.
  int? _minimumLoyalityAmount;
  int get minimumLoyalityAmount => _minimumLoyalityAmount ?? 0;
  set minimumLoyalityAmount(int? val) => _minimumLoyalityAmount = val;

  void incrementMinimumLoyalityAmount(int amount) =>
      minimumLoyalityAmount = minimumLoyalityAmount + amount;

  bool hasMinimumLoyalityAmount() => _minimumLoyalityAmount != null;

  // "CashEnabled" field.
  bool? _cashEnabled;
  bool get cashEnabled => _cashEnabled ?? false;
  set cashEnabled(bool? val) => _cashEnabled = val;

  bool hasCashEnabled() => _cashEnabled != null;

  // "CardEnabled" field.
  bool? _cardEnabled;
  bool get cardEnabled => _cardEnabled ?? false;
  set cardEnabled(bool? val) => _cardEnabled = val;

  bool hasCardEnabled() => _cardEnabled != null;

  // "IOsappId" field.
  String? _iOsappId;
  String get iOsappId => _iOsappId ?? '';
  set iOsappId(String? val) => _iOsappId = val;

  bool hasIOsappId() => _iOsappId != null;

  // "AndroidAppId" field.
  String? _androidAppId;
  String get androidAppId => _androidAppId ?? '';
  set androidAppId(String? val) => _androidAppId = val;

  bool hasAndroidAppId() => _androidAppId != null;

  // "InvoiceStartFrom" field.
  String? _invoiceStartFrom;
  String get invoiceStartFrom => _invoiceStartFrom ?? '';
  set invoiceStartFrom(String? val) => _invoiceStartFrom = val;

  bool hasInvoiceStartFrom() => _invoiceStartFrom != null;

  // "WeeklyFee" field.
  int? _weeklyFee;
  int get weeklyFee => _weeklyFee ?? 0;
  set weeklyFee(int? val) => _weeklyFee = val;

  void incrementWeeklyFee(int amount) => weeklyFee = weeklyFee + amount;

  bool hasWeeklyFee() => _weeklyFee != null;

  // "Address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  set address1(String? val) => _address1 = val;

  bool hasAddress1() => _address1 != null;

  // "Address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  set address2(String? val) => _address2 = val;

  bool hasAddress2() => _address2 != null;

  // "Address3" field.
  String? _address3;
  String get address3 => _address3 ?? '';
  set address3(String? val) => _address3 = val;

  bool hasAddress3() => _address3 != null;

  // "Lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "Long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  // "NativeAppImage" field.
  String? _nativeAppImage;
  String get nativeAppImage => _nativeAppImage ?? '';
  set nativeAppImage(String? val) => _nativeAppImage = val;

  bool hasNativeAppImage() => _nativeAppImage != null;

  // "AppleUrl" field.
  String? _appleUrl;
  String get appleUrl => _appleUrl ?? '';
  set appleUrl(String? val) => _appleUrl = val;

  bool hasAppleUrl() => _appleUrl != null;

  // "BusinessName" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;

  bool hasBusinessName() => _businessName != null;

  // "BusinessAddress1" field.
  String? _businessAddress1;
  String get businessAddress1 => _businessAddress1 ?? '';
  set businessAddress1(String? val) => _businessAddress1 = val;

  bool hasBusinessAddress1() => _businessAddress1 != null;

  // "BusinessAddress2" field.
  String? _businessAddress2;
  String get businessAddress2 => _businessAddress2 ?? '';
  set businessAddress2(String? val) => _businessAddress2 = val;

  bool hasBusinessAddress2() => _businessAddress2 != null;

  // "BusinessAddress3" field.
  String? _businessAddress3;
  String get businessAddress3 => _businessAddress3 ?? '';
  set businessAddress3(String? val) => _businessAddress3 = val;

  bool hasBusinessAddress3() => _businessAddress3 != null;

  // "BusinessPostcode" field.
  String? _businessPostcode;
  String get businessPostcode => _businessPostcode ?? '';
  set businessPostcode(String? val) => _businessPostcode = val;

  bool hasBusinessPostcode() => _businessPostcode != null;

  // "NativeAppLogoUrl" field.
  String? _nativeAppLogoUrl;
  String get nativeAppLogoUrl => _nativeAppLogoUrl ?? '';
  set nativeAppLogoUrl(String? val) => _nativeAppLogoUrl = val;

  bool hasNativeAppLogoUrl() => _nativeAppLogoUrl != null;

  // "WebSiteBackImageUrl" field.
  String? _webSiteBackImageUrl;
  String get webSiteBackImageUrl => _webSiteBackImageUrl ?? '';
  set webSiteBackImageUrl(String? val) => _webSiteBackImageUrl = val;

  bool hasWebSiteBackImageUrl() => _webSiteBackImageUrl != null;

  // "AppOrderingAllowed" field.
  bool? _appOrderingAllowed;
  bool get appOrderingAllowed => _appOrderingAllowed ?? false;
  set appOrderingAllowed(bool? val) => _appOrderingAllowed = val;

  bool hasAppOrderingAllowed() => _appOrderingAllowed != null;

  // "TableOrderingAllowed" field.
  bool? _tableOrderingAllowed;
  bool get tableOrderingAllowed => _tableOrderingAllowed ?? false;
  set tableOrderingAllowed(bool? val) => _tableOrderingAllowed = val;

  bool hasTableOrderingAllowed() => _tableOrderingAllowed != null;

  // "PrinterId" field.
  int? _printerId;
  int get printerId => _printerId ?? 0;
  set printerId(int? val) => _printerId = val;

  void incrementPrinterId(int amount) => printerId = printerId + amount;

  bool hasPrinterId() => _printerId != null;

  // "Domain" field.
  String? _domain;
  String get domain => _domain ?? '';
  set domain(String? val) => _domain = val;

  bool hasDomain() => _domain != null;

  // "AndoidAppLink" field.
  String? _andoidAppLink;
  String get andoidAppLink => _andoidAppLink ?? '';
  set andoidAppLink(String? val) => _andoidAppLink = val;

  bool hasAndoidAppLink() => _andoidAppLink != null;

  // "AppScreenshot" field.
  String? _appScreenshot;
  String get appScreenshot => _appScreenshot ?? '';
  set appScreenshot(String? val) => _appScreenshot = val;

  bool hasAppScreenshot() => _appScreenshot != null;

  // "CssColor" field.
  String? _cssColor;
  String get cssColor => _cssColor ?? '';
  set cssColor(String? val) => _cssColor = val;

  bool hasCssColor() => _cssColor != null;

  // "PrinterLastConnected" field.
  String? _printerLastConnected;
  String get printerLastConnected => _printerLastConnected ?? '';
  set printerLastConnected(String? val) => _printerLastConnected = val;

  bool hasPrinterLastConnected() => _printerLastConnected != null;

  // "CreatedOn" field.
  String? _createdOn;
  String get createdOn => _createdOn ?? '';
  set createdOn(String? val) => _createdOn = val;

  bool hasCreatedOn() => _createdOn != null;

  // "PercentageCarges" field.
  int? _percentageCarges;
  int get percentageCarges => _percentageCarges ?? 0;
  set percentageCarges(int? val) => _percentageCarges = val;

  void incrementPercentageCarges(int amount) =>
      percentageCarges = percentageCarges + amount;

  bool hasPercentageCarges() => _percentageCarges != null;

  // "FixedCharges" field.
  double? _fixedCharges;
  double get fixedCharges => _fixedCharges ?? 0.0;
  set fixedCharges(double? val) => _fixedCharges = val;

  void incrementFixedCharges(double amount) =>
      fixedCharges = fixedCharges + amount;

  bool hasFixedCharges() => _fixedCharges != null;

  // "GplaceId" field.
  String? _gplaceId;
  String get gplaceId => _gplaceId ?? '';
  set gplaceId(String? val) => _gplaceId = val;

  bool hasGplaceId() => _gplaceId != null;

  // "MenuSyncOn" field.
  String? _menuSyncOn;
  String get menuSyncOn => _menuSyncOn ?? '';
  set menuSyncOn(String? val) => _menuSyncOn = val;

  bool hasMenuSyncOn() => _menuSyncOn != null;

  // "ConnectedRazorPayId" field.
  String? _connectedRazorPayId;
  String get connectedRazorPayId => _connectedRazorPayId ?? '';
  set connectedRazorPayId(String? val) => _connectedRazorPayId = val;

  bool hasConnectedRazorPayId() => _connectedRazorPayId != null;

  // "FreeDeliveryAmount" field.
  int? _freeDeliveryAmount;
  int get freeDeliveryAmount => _freeDeliveryAmount ?? 0;
  set freeDeliveryAmount(int? val) => _freeDeliveryAmount = val;

  void incrementFreeDeliveryAmount(int amount) =>
      freeDeliveryAmount = freeDeliveryAmount + amount;

  bool hasFreeDeliveryAmount() => _freeDeliveryAmount != null;

  // "PprestaurantId" field.
  String? _pprestaurantId;
  String get pprestaurantId => _pprestaurantId ?? '';
  set pprestaurantId(String? val) => _pprestaurantId = val;

  bool hasPprestaurantId() => _pprestaurantId != null;

  // "PpmenuSharingCode" field.
  String? _ppmenuSharingCode;
  String get ppmenuSharingCode => _ppmenuSharingCode ?? '';
  set ppmenuSharingCode(String? val) => _ppmenuSharingCode = val;

  bool hasPpmenuSharingCode() => _ppmenuSharingCode != null;

  // "MenuRates" field.
  int? _menuRates;
  int get menuRates => _menuRates ?? 0;
  set menuRates(int? val) => _menuRates = val;

  void incrementMenuRates(int amount) => menuRates = menuRates + amount;

  bool hasMenuRates() => _menuRates != null;

  // "UseNativePayment" field.
  bool? _useNativePayment;
  bool get useNativePayment => _useNativePayment ?? false;
  set useNativePayment(bool? val) => _useNativePayment = val;

  bool hasUseNativePayment() => _useNativePayment != null;

  // "NewLat" field.
  double? _newLat;
  double get newLat => _newLat ?? 0.0;
  set newLat(double? val) => _newLat = val;

  void incrementNewLat(double amount) => newLat = newLat + amount;

  bool hasNewLat() => _newLat != null;

  // "NewLong" field.
  double? _newLong;
  double get newLong => _newLong ?? 0.0;
  set newLong(double? val) => _newLong = val;

  void incrementNewLong(double amount) => newLong = newLong + amount;

  bool hasNewLong() => _newLong != null;

  // "OldLat" field.
  double? _oldLat;
  double get oldLat => _oldLat ?? 0.0;
  set oldLat(double? val) => _oldLat = val;

  void incrementOldLat(double amount) => oldLat = oldLat + amount;

  bool hasOldLat() => _oldLat != null;

  // "OldLong" field.
  double? _oldLong;
  double get oldLong => _oldLong ?? 0.0;
  set oldLong(double? val) => _oldLong = val;

  void incrementOldLong(double amount) => oldLong = oldLong + amount;

  bool hasOldLong() => _oldLong != null;

  // "NewAddress" field.
  String? _newAddress;
  String get newAddress => _newAddress ?? '';
  set newAddress(String? val) => _newAddress = val;

  bool hasNewAddress() => _newAddress != null;

  // "Gtsnumber" field.
  String? _gtsnumber;
  String get gtsnumber => _gtsnumber ?? '';
  set gtsnumber(String? val) => _gtsnumber = val;

  bool hasGtsnumber() => _gtsnumber != null;

  // "Fssai" field.
  String? _fssai;
  String get fssai => _fssai ?? '';
  set fssai(String? val) => _fssai = val;

  bool hasFssai() => _fssai != null;

  // "PaymentQrcodeLink" field.
  String? _paymentQrcodeLink;
  String get paymentQrcodeLink => _paymentQrcodeLink ?? '';
  set paymentQrcodeLink(String? val) => _paymentQrcodeLink = val;

  bool hasPaymentQrcodeLink() => _paymentQrcodeLink != null;

  // "IsUpcoming" field.
  String? _isUpcoming;
  String get isUpcoming => _isUpcoming ?? '';
  set isUpcoming(String? val) => _isUpcoming = val;

  bool hasIsUpcoming() => _isUpcoming != null;

  // "PackageCharges" field.
  int? _packageCharges;
  int get packageCharges => _packageCharges ?? 0;
  set packageCharges(int? val) => _packageCharges = val;

  void incrementPackageCharges(int amount) =>
      packageCharges = packageCharges + amount;

  bool hasPackageCharges() => _packageCharges != null;

  static BusinessDetailStruct fromMap(Map<String, dynamic> data) =>
      BusinessDetailStruct(
        id: castToType<int>(data['Id']),
        name: data['Name'] as String?,
        address: data['Address'] as String?,
        postalCode: data['PostalCode'] as String?,
        foodType: data['FoodType'] as String?,
        deliveryMinAmount: castToType<int>(data['DeliveryMinAmount']),
        deliveryMaxDistance: castToType<int>(data['DeliveryMaxDistance']),
        deliveryFreeDistance: castToType<int>(data['DeliveryFreeDistance']),
        averageDeliveryTime: castToType<int>(data['AverageDeliveryTime']),
        averageCollectionTime: castToType<int>(data['AverageCollectionTime']),
        deliveryFee: castToType<int>(data['DeliveryFee']),
        imgUrl: data['ImgUrl'] as String?,
        telephone: data['Telephone'] as String?,
        email: data['Email'] as String?,
        pswd: data['Pswd'] as String?,
        businessClosed: data['BusinessClosed'] as bool?,
        announcement: data['Announcement'] as String?,
        currencysymbol: data['Currencysymbol'] as String?,
        creditcardsurcharge: data['Creditcardsurcharge'] as String?,
        sendOrdersToPrinter: data['SendOrdersToPrinter'] as String?,
        idTimeZone: data['IdTimeZone'] as String?,
        disableDelivery: data['DisableDelivery'] as String?,
        disableCollection: data['DisableCollection'] as String?,
        clientId: data['ClientId'] as String?,
        transactionPercentage: data['TransactionPercentage'] as String?,
        serviceCharge: data['ServiceCharge'] as String?,
        loyaltyEnabled: data['LoyaltyEnabled'] as bool?,
        minimumLoyalityAmount: castToType<int>(data['MinimumLoyalityAmount']),
        cashEnabled: data['CashEnabled'] as bool?,
        cardEnabled: data['CardEnabled'] as bool?,
        iOsappId: data['IOsappId'] as String?,
        androidAppId: data['AndroidAppId'] as String?,
        invoiceStartFrom: data['InvoiceStartFrom'] as String?,
        weeklyFee: castToType<int>(data['WeeklyFee']),
        address1: data['Address1'] as String?,
        address2: data['Address2'] as String?,
        address3: data['Address3'] as String?,
        lat: castToType<double>(data['Lat']),
        long: castToType<double>(data['Long']),
        nativeAppImage: data['NativeAppImage'] as String?,
        appleUrl: data['AppleUrl'] as String?,
        businessName: data['BusinessName'] as String?,
        businessAddress1: data['BusinessAddress1'] as String?,
        businessAddress2: data['BusinessAddress2'] as String?,
        businessAddress3: data['BusinessAddress3'] as String?,
        businessPostcode: data['BusinessPostcode'] as String?,
        nativeAppLogoUrl: data['NativeAppLogoUrl'] as String?,
        webSiteBackImageUrl: data['WebSiteBackImageUrl'] as String?,
        appOrderingAllowed: data['AppOrderingAllowed'] as bool?,
        tableOrderingAllowed: data['TableOrderingAllowed'] as bool?,
        printerId: castToType<int>(data['PrinterId']),
        domain: data['Domain'] as String?,
        andoidAppLink: data['AndoidAppLink'] as String?,
        appScreenshot: data['AppScreenshot'] as String?,
        cssColor: data['CssColor'] as String?,
        printerLastConnected: data['PrinterLastConnected'] as String?,
        createdOn: data['CreatedOn'] as String?,
        percentageCarges: castToType<int>(data['PercentageCarges']),
        fixedCharges: castToType<double>(data['FixedCharges']),
        gplaceId: data['GplaceId'] as String?,
        menuSyncOn: data['MenuSyncOn'] as String?,
        connectedRazorPayId: data['ConnectedRazorPayId'] as String?,
        freeDeliveryAmount: castToType<int>(data['FreeDeliveryAmount']),
        pprestaurantId: data['PprestaurantId'] as String?,
        ppmenuSharingCode: data['PpmenuSharingCode'] as String?,
        menuRates: castToType<int>(data['MenuRates']),
        useNativePayment: data['UseNativePayment'] as bool?,
        newLat: castToType<double>(data['NewLat']),
        newLong: castToType<double>(data['NewLong']),
        oldLat: castToType<double>(data['OldLat']),
        oldLong: castToType<double>(data['OldLong']),
        newAddress: data['NewAddress'] as String?,
        gtsnumber: data['Gtsnumber'] as String?,
        fssai: data['Fssai'] as String?,
        paymentQrcodeLink: data['PaymentQrcodeLink'] as String?,
        isUpcoming: data['IsUpcoming'] as String?,
        packageCharges: castToType<int>(data['PackageCharges']),
      );

  static BusinessDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? BusinessDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Name': _name,
        'Address': _address,
        'PostalCode': _postalCode,
        'FoodType': _foodType,
        'DeliveryMinAmount': _deliveryMinAmount,
        'DeliveryMaxDistance': _deliveryMaxDistance,
        'DeliveryFreeDistance': _deliveryFreeDistance,
        'AverageDeliveryTime': _averageDeliveryTime,
        'AverageCollectionTime': _averageCollectionTime,
        'DeliveryFee': _deliveryFee,
        'ImgUrl': _imgUrl,
        'Telephone': _telephone,
        'Email': _email,
        'Pswd': _pswd,
        'BusinessClosed': _businessClosed,
        'Announcement': _announcement,
        'Currencysymbol': _currencysymbol,
        'Creditcardsurcharge': _creditcardsurcharge,
        'SendOrdersToPrinter': _sendOrdersToPrinter,
        'IdTimeZone': _idTimeZone,
        'DisableDelivery': _disableDelivery,
        'DisableCollection': _disableCollection,
        'ClientId': _clientId,
        'TransactionPercentage': _transactionPercentage,
        'ServiceCharge': _serviceCharge,
        'LoyaltyEnabled': _loyaltyEnabled,
        'MinimumLoyalityAmount': _minimumLoyalityAmount,
        'CashEnabled': _cashEnabled,
        'CardEnabled': _cardEnabled,
        'IOsappId': _iOsappId,
        'AndroidAppId': _androidAppId,
        'InvoiceStartFrom': _invoiceStartFrom,
        'WeeklyFee': _weeklyFee,
        'Address1': _address1,
        'Address2': _address2,
        'Address3': _address3,
        'Lat': _lat,
        'Long': _long,
        'NativeAppImage': _nativeAppImage,
        'AppleUrl': _appleUrl,
        'BusinessName': _businessName,
        'BusinessAddress1': _businessAddress1,
        'BusinessAddress2': _businessAddress2,
        'BusinessAddress3': _businessAddress3,
        'BusinessPostcode': _businessPostcode,
        'NativeAppLogoUrl': _nativeAppLogoUrl,
        'WebSiteBackImageUrl': _webSiteBackImageUrl,
        'AppOrderingAllowed': _appOrderingAllowed,
        'TableOrderingAllowed': _tableOrderingAllowed,
        'PrinterId': _printerId,
        'Domain': _domain,
        'AndoidAppLink': _andoidAppLink,
        'AppScreenshot': _appScreenshot,
        'CssColor': _cssColor,
        'PrinterLastConnected': _printerLastConnected,
        'CreatedOn': _createdOn,
        'PercentageCarges': _percentageCarges,
        'FixedCharges': _fixedCharges,
        'GplaceId': _gplaceId,
        'MenuSyncOn': _menuSyncOn,
        'ConnectedRazorPayId': _connectedRazorPayId,
        'FreeDeliveryAmount': _freeDeliveryAmount,
        'PprestaurantId': _pprestaurantId,
        'PpmenuSharingCode': _ppmenuSharingCode,
        'MenuRates': _menuRates,
        'UseNativePayment': _useNativePayment,
        'NewLat': _newLat,
        'NewLong': _newLong,
        'OldLat': _oldLat,
        'OldLong': _oldLong,
        'NewAddress': _newAddress,
        'Gtsnumber': _gtsnumber,
        'Fssai': _fssai,
        'PaymentQrcodeLink': _paymentQrcodeLink,
        'IsUpcoming': _isUpcoming,
        'PackageCharges': _packageCharges,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
        'PostalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'FoodType': serializeParam(
          _foodType,
          ParamType.String,
        ),
        'DeliveryMinAmount': serializeParam(
          _deliveryMinAmount,
          ParamType.int,
        ),
        'DeliveryMaxDistance': serializeParam(
          _deliveryMaxDistance,
          ParamType.int,
        ),
        'DeliveryFreeDistance': serializeParam(
          _deliveryFreeDistance,
          ParamType.int,
        ),
        'AverageDeliveryTime': serializeParam(
          _averageDeliveryTime,
          ParamType.int,
        ),
        'AverageCollectionTime': serializeParam(
          _averageCollectionTime,
          ParamType.int,
        ),
        'DeliveryFee': serializeParam(
          _deliveryFee,
          ParamType.int,
        ),
        'ImgUrl': serializeParam(
          _imgUrl,
          ParamType.String,
        ),
        'Telephone': serializeParam(
          _telephone,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Pswd': serializeParam(
          _pswd,
          ParamType.String,
        ),
        'BusinessClosed': serializeParam(
          _businessClosed,
          ParamType.bool,
        ),
        'Announcement': serializeParam(
          _announcement,
          ParamType.String,
        ),
        'Currencysymbol': serializeParam(
          _currencysymbol,
          ParamType.String,
        ),
        'Creditcardsurcharge': serializeParam(
          _creditcardsurcharge,
          ParamType.String,
        ),
        'SendOrdersToPrinter': serializeParam(
          _sendOrdersToPrinter,
          ParamType.String,
        ),
        'IdTimeZone': serializeParam(
          _idTimeZone,
          ParamType.String,
        ),
        'DisableDelivery': serializeParam(
          _disableDelivery,
          ParamType.String,
        ),
        'DisableCollection': serializeParam(
          _disableCollection,
          ParamType.String,
        ),
        'ClientId': serializeParam(
          _clientId,
          ParamType.String,
        ),
        'TransactionPercentage': serializeParam(
          _transactionPercentage,
          ParamType.String,
        ),
        'ServiceCharge': serializeParam(
          _serviceCharge,
          ParamType.String,
        ),
        'LoyaltyEnabled': serializeParam(
          _loyaltyEnabled,
          ParamType.bool,
        ),
        'MinimumLoyalityAmount': serializeParam(
          _minimumLoyalityAmount,
          ParamType.int,
        ),
        'CashEnabled': serializeParam(
          _cashEnabled,
          ParamType.bool,
        ),
        'CardEnabled': serializeParam(
          _cardEnabled,
          ParamType.bool,
        ),
        'IOsappId': serializeParam(
          _iOsappId,
          ParamType.String,
        ),
        'AndroidAppId': serializeParam(
          _androidAppId,
          ParamType.String,
        ),
        'InvoiceStartFrom': serializeParam(
          _invoiceStartFrom,
          ParamType.String,
        ),
        'WeeklyFee': serializeParam(
          _weeklyFee,
          ParamType.int,
        ),
        'Address1': serializeParam(
          _address1,
          ParamType.String,
        ),
        'Address2': serializeParam(
          _address2,
          ParamType.String,
        ),
        'Address3': serializeParam(
          _address3,
          ParamType.String,
        ),
        'Lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'Long': serializeParam(
          _long,
          ParamType.double,
        ),
        'NativeAppImage': serializeParam(
          _nativeAppImage,
          ParamType.String,
        ),
        'AppleUrl': serializeParam(
          _appleUrl,
          ParamType.String,
        ),
        'BusinessName': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'BusinessAddress1': serializeParam(
          _businessAddress1,
          ParamType.String,
        ),
        'BusinessAddress2': serializeParam(
          _businessAddress2,
          ParamType.String,
        ),
        'BusinessAddress3': serializeParam(
          _businessAddress3,
          ParamType.String,
        ),
        'BusinessPostcode': serializeParam(
          _businessPostcode,
          ParamType.String,
        ),
        'NativeAppLogoUrl': serializeParam(
          _nativeAppLogoUrl,
          ParamType.String,
        ),
        'WebSiteBackImageUrl': serializeParam(
          _webSiteBackImageUrl,
          ParamType.String,
        ),
        'AppOrderingAllowed': serializeParam(
          _appOrderingAllowed,
          ParamType.bool,
        ),
        'TableOrderingAllowed': serializeParam(
          _tableOrderingAllowed,
          ParamType.bool,
        ),
        'PrinterId': serializeParam(
          _printerId,
          ParamType.int,
        ),
        'Domain': serializeParam(
          _domain,
          ParamType.String,
        ),
        'AndoidAppLink': serializeParam(
          _andoidAppLink,
          ParamType.String,
        ),
        'AppScreenshot': serializeParam(
          _appScreenshot,
          ParamType.String,
        ),
        'CssColor': serializeParam(
          _cssColor,
          ParamType.String,
        ),
        'PrinterLastConnected': serializeParam(
          _printerLastConnected,
          ParamType.String,
        ),
        'CreatedOn': serializeParam(
          _createdOn,
          ParamType.String,
        ),
        'PercentageCarges': serializeParam(
          _percentageCarges,
          ParamType.int,
        ),
        'FixedCharges': serializeParam(
          _fixedCharges,
          ParamType.double,
        ),
        'GplaceId': serializeParam(
          _gplaceId,
          ParamType.String,
        ),
        'MenuSyncOn': serializeParam(
          _menuSyncOn,
          ParamType.String,
        ),
        'ConnectedRazorPayId': serializeParam(
          _connectedRazorPayId,
          ParamType.String,
        ),
        'FreeDeliveryAmount': serializeParam(
          _freeDeliveryAmount,
          ParamType.int,
        ),
        'PprestaurantId': serializeParam(
          _pprestaurantId,
          ParamType.String,
        ),
        'PpmenuSharingCode': serializeParam(
          _ppmenuSharingCode,
          ParamType.String,
        ),
        'MenuRates': serializeParam(
          _menuRates,
          ParamType.int,
        ),
        'UseNativePayment': serializeParam(
          _useNativePayment,
          ParamType.bool,
        ),
        'NewLat': serializeParam(
          _newLat,
          ParamType.double,
        ),
        'NewLong': serializeParam(
          _newLong,
          ParamType.double,
        ),
        'OldLat': serializeParam(
          _oldLat,
          ParamType.double,
        ),
        'OldLong': serializeParam(
          _oldLong,
          ParamType.double,
        ),
        'NewAddress': serializeParam(
          _newAddress,
          ParamType.String,
        ),
        'Gtsnumber': serializeParam(
          _gtsnumber,
          ParamType.String,
        ),
        'Fssai': serializeParam(
          _fssai,
          ParamType.String,
        ),
        'PaymentQrcodeLink': serializeParam(
          _paymentQrcodeLink,
          ParamType.String,
        ),
        'IsUpcoming': serializeParam(
          _isUpcoming,
          ParamType.String,
        ),
        'PackageCharges': serializeParam(
          _packageCharges,
          ParamType.int,
        ),
      }.withoutNulls;

  static BusinessDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      BusinessDetailStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['PostalCode'],
          ParamType.String,
          false,
        ),
        foodType: deserializeParam(
          data['FoodType'],
          ParamType.String,
          false,
        ),
        deliveryMinAmount: deserializeParam(
          data['DeliveryMinAmount'],
          ParamType.int,
          false,
        ),
        deliveryMaxDistance: deserializeParam(
          data['DeliveryMaxDistance'],
          ParamType.int,
          false,
        ),
        deliveryFreeDistance: deserializeParam(
          data['DeliveryFreeDistance'],
          ParamType.int,
          false,
        ),
        averageDeliveryTime: deserializeParam(
          data['AverageDeliveryTime'],
          ParamType.int,
          false,
        ),
        averageCollectionTime: deserializeParam(
          data['AverageCollectionTime'],
          ParamType.int,
          false,
        ),
        deliveryFee: deserializeParam(
          data['DeliveryFee'],
          ParamType.int,
          false,
        ),
        imgUrl: deserializeParam(
          data['ImgUrl'],
          ParamType.String,
          false,
        ),
        telephone: deserializeParam(
          data['Telephone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        pswd: deserializeParam(
          data['Pswd'],
          ParamType.String,
          false,
        ),
        businessClosed: deserializeParam(
          data['BusinessClosed'],
          ParamType.bool,
          false,
        ),
        announcement: deserializeParam(
          data['Announcement'],
          ParamType.String,
          false,
        ),
        currencysymbol: deserializeParam(
          data['Currencysymbol'],
          ParamType.String,
          false,
        ),
        creditcardsurcharge: deserializeParam(
          data['Creditcardsurcharge'],
          ParamType.String,
          false,
        ),
        sendOrdersToPrinter: deserializeParam(
          data['SendOrdersToPrinter'],
          ParamType.String,
          false,
        ),
        idTimeZone: deserializeParam(
          data['IdTimeZone'],
          ParamType.String,
          false,
        ),
        disableDelivery: deserializeParam(
          data['DisableDelivery'],
          ParamType.String,
          false,
        ),
        disableCollection: deserializeParam(
          data['DisableCollection'],
          ParamType.String,
          false,
        ),
        clientId: deserializeParam(
          data['ClientId'],
          ParamType.String,
          false,
        ),
        transactionPercentage: deserializeParam(
          data['TransactionPercentage'],
          ParamType.String,
          false,
        ),
        serviceCharge: deserializeParam(
          data['ServiceCharge'],
          ParamType.String,
          false,
        ),
        loyaltyEnabled: deserializeParam(
          data['LoyaltyEnabled'],
          ParamType.bool,
          false,
        ),
        minimumLoyalityAmount: deserializeParam(
          data['MinimumLoyalityAmount'],
          ParamType.int,
          false,
        ),
        cashEnabled: deserializeParam(
          data['CashEnabled'],
          ParamType.bool,
          false,
        ),
        cardEnabled: deserializeParam(
          data['CardEnabled'],
          ParamType.bool,
          false,
        ),
        iOsappId: deserializeParam(
          data['IOsappId'],
          ParamType.String,
          false,
        ),
        androidAppId: deserializeParam(
          data['AndroidAppId'],
          ParamType.String,
          false,
        ),
        invoiceStartFrom: deserializeParam(
          data['InvoiceStartFrom'],
          ParamType.String,
          false,
        ),
        weeklyFee: deserializeParam(
          data['WeeklyFee'],
          ParamType.int,
          false,
        ),
        address1: deserializeParam(
          data['Address1'],
          ParamType.String,
          false,
        ),
        address2: deserializeParam(
          data['Address2'],
          ParamType.String,
          false,
        ),
        address3: deserializeParam(
          data['Address3'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['Lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['Long'],
          ParamType.double,
          false,
        ),
        nativeAppImage: deserializeParam(
          data['NativeAppImage'],
          ParamType.String,
          false,
        ),
        appleUrl: deserializeParam(
          data['AppleUrl'],
          ParamType.String,
          false,
        ),
        businessName: deserializeParam(
          data['BusinessName'],
          ParamType.String,
          false,
        ),
        businessAddress1: deserializeParam(
          data['BusinessAddress1'],
          ParamType.String,
          false,
        ),
        businessAddress2: deserializeParam(
          data['BusinessAddress2'],
          ParamType.String,
          false,
        ),
        businessAddress3: deserializeParam(
          data['BusinessAddress3'],
          ParamType.String,
          false,
        ),
        businessPostcode: deserializeParam(
          data['BusinessPostcode'],
          ParamType.String,
          false,
        ),
        nativeAppLogoUrl: deserializeParam(
          data['NativeAppLogoUrl'],
          ParamType.String,
          false,
        ),
        webSiteBackImageUrl: deserializeParam(
          data['WebSiteBackImageUrl'],
          ParamType.String,
          false,
        ),
        appOrderingAllowed: deserializeParam(
          data['AppOrderingAllowed'],
          ParamType.bool,
          false,
        ),
        tableOrderingAllowed: deserializeParam(
          data['TableOrderingAllowed'],
          ParamType.bool,
          false,
        ),
        printerId: deserializeParam(
          data['PrinterId'],
          ParamType.int,
          false,
        ),
        domain: deserializeParam(
          data['Domain'],
          ParamType.String,
          false,
        ),
        andoidAppLink: deserializeParam(
          data['AndoidAppLink'],
          ParamType.String,
          false,
        ),
        appScreenshot: deserializeParam(
          data['AppScreenshot'],
          ParamType.String,
          false,
        ),
        cssColor: deserializeParam(
          data['CssColor'],
          ParamType.String,
          false,
        ),
        printerLastConnected: deserializeParam(
          data['PrinterLastConnected'],
          ParamType.String,
          false,
        ),
        createdOn: deserializeParam(
          data['CreatedOn'],
          ParamType.String,
          false,
        ),
        percentageCarges: deserializeParam(
          data['PercentageCarges'],
          ParamType.int,
          false,
        ),
        fixedCharges: deserializeParam(
          data['FixedCharges'],
          ParamType.double,
          false,
        ),
        gplaceId: deserializeParam(
          data['GplaceId'],
          ParamType.String,
          false,
        ),
        menuSyncOn: deserializeParam(
          data['MenuSyncOn'],
          ParamType.String,
          false,
        ),
        connectedRazorPayId: deserializeParam(
          data['ConnectedRazorPayId'],
          ParamType.String,
          false,
        ),
        freeDeliveryAmount: deserializeParam(
          data['FreeDeliveryAmount'],
          ParamType.int,
          false,
        ),
        pprestaurantId: deserializeParam(
          data['PprestaurantId'],
          ParamType.String,
          false,
        ),
        ppmenuSharingCode: deserializeParam(
          data['PpmenuSharingCode'],
          ParamType.String,
          false,
        ),
        menuRates: deserializeParam(
          data['MenuRates'],
          ParamType.int,
          false,
        ),
        useNativePayment: deserializeParam(
          data['UseNativePayment'],
          ParamType.bool,
          false,
        ),
        newLat: deserializeParam(
          data['NewLat'],
          ParamType.double,
          false,
        ),
        newLong: deserializeParam(
          data['NewLong'],
          ParamType.double,
          false,
        ),
        oldLat: deserializeParam(
          data['OldLat'],
          ParamType.double,
          false,
        ),
        oldLong: deserializeParam(
          data['OldLong'],
          ParamType.double,
          false,
        ),
        newAddress: deserializeParam(
          data['NewAddress'],
          ParamType.String,
          false,
        ),
        gtsnumber: deserializeParam(
          data['Gtsnumber'],
          ParamType.String,
          false,
        ),
        fssai: deserializeParam(
          data['Fssai'],
          ParamType.String,
          false,
        ),
        paymentQrcodeLink: deserializeParam(
          data['PaymentQrcodeLink'],
          ParamType.String,
          false,
        ),
        isUpcoming: deserializeParam(
          data['IsUpcoming'],
          ParamType.String,
          false,
        ),
        packageCharges: deserializeParam(
          data['PackageCharges'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BusinessDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessDetailStruct &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        postalCode == other.postalCode &&
        foodType == other.foodType &&
        deliveryMinAmount == other.deliveryMinAmount &&
        deliveryMaxDistance == other.deliveryMaxDistance &&
        deliveryFreeDistance == other.deliveryFreeDistance &&
        averageDeliveryTime == other.averageDeliveryTime &&
        averageCollectionTime == other.averageCollectionTime &&
        deliveryFee == other.deliveryFee &&
        imgUrl == other.imgUrl &&
        telephone == other.telephone &&
        email == other.email &&
        pswd == other.pswd &&
        businessClosed == other.businessClosed &&
        announcement == other.announcement &&
        currencysymbol == other.currencysymbol &&
        creditcardsurcharge == other.creditcardsurcharge &&
        sendOrdersToPrinter == other.sendOrdersToPrinter &&
        idTimeZone == other.idTimeZone &&
        disableDelivery == other.disableDelivery &&
        disableCollection == other.disableCollection &&
        clientId == other.clientId &&
        transactionPercentage == other.transactionPercentage &&
        serviceCharge == other.serviceCharge &&
        loyaltyEnabled == other.loyaltyEnabled &&
        minimumLoyalityAmount == other.minimumLoyalityAmount &&
        cashEnabled == other.cashEnabled &&
        cardEnabled == other.cardEnabled &&
        iOsappId == other.iOsappId &&
        androidAppId == other.androidAppId &&
        invoiceStartFrom == other.invoiceStartFrom &&
        weeklyFee == other.weeklyFee &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        address3 == other.address3 &&
        lat == other.lat &&
        long == other.long &&
        nativeAppImage == other.nativeAppImage &&
        appleUrl == other.appleUrl &&
        businessName == other.businessName &&
        businessAddress1 == other.businessAddress1 &&
        businessAddress2 == other.businessAddress2 &&
        businessAddress3 == other.businessAddress3 &&
        businessPostcode == other.businessPostcode &&
        nativeAppLogoUrl == other.nativeAppLogoUrl &&
        webSiteBackImageUrl == other.webSiteBackImageUrl &&
        appOrderingAllowed == other.appOrderingAllowed &&
        tableOrderingAllowed == other.tableOrderingAllowed &&
        printerId == other.printerId &&
        domain == other.domain &&
        andoidAppLink == other.andoidAppLink &&
        appScreenshot == other.appScreenshot &&
        cssColor == other.cssColor &&
        printerLastConnected == other.printerLastConnected &&
        createdOn == other.createdOn &&
        percentageCarges == other.percentageCarges &&
        fixedCharges == other.fixedCharges &&
        gplaceId == other.gplaceId &&
        menuSyncOn == other.menuSyncOn &&
        connectedRazorPayId == other.connectedRazorPayId &&
        freeDeliveryAmount == other.freeDeliveryAmount &&
        pprestaurantId == other.pprestaurantId &&
        ppmenuSharingCode == other.ppmenuSharingCode &&
        menuRates == other.menuRates &&
        useNativePayment == other.useNativePayment &&
        newLat == other.newLat &&
        newLong == other.newLong &&
        oldLat == other.oldLat &&
        oldLong == other.oldLong &&
        newAddress == other.newAddress &&
        gtsnumber == other.gtsnumber &&
        fssai == other.fssai &&
        paymentQrcodeLink == other.paymentQrcodeLink &&
        isUpcoming == other.isUpcoming &&
        packageCharges == other.packageCharges;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        address,
        postalCode,
        foodType,
        deliveryMinAmount,
        deliveryMaxDistance,
        deliveryFreeDistance,
        averageDeliveryTime,
        averageCollectionTime,
        deliveryFee,
        imgUrl,
        telephone,
        email,
        pswd,
        businessClosed,
        announcement,
        currencysymbol,
        creditcardsurcharge,
        sendOrdersToPrinter,
        idTimeZone,
        disableDelivery,
        disableCollection,
        clientId,
        transactionPercentage,
        serviceCharge,
        loyaltyEnabled,
        minimumLoyalityAmount,
        cashEnabled,
        cardEnabled,
        iOsappId,
        androidAppId,
        invoiceStartFrom,
        weeklyFee,
        address1,
        address2,
        address3,
        lat,
        long,
        nativeAppImage,
        appleUrl,
        businessName,
        businessAddress1,
        businessAddress2,
        businessAddress3,
        businessPostcode,
        nativeAppLogoUrl,
        webSiteBackImageUrl,
        appOrderingAllowed,
        tableOrderingAllowed,
        printerId,
        domain,
        andoidAppLink,
        appScreenshot,
        cssColor,
        printerLastConnected,
        createdOn,
        percentageCarges,
        fixedCharges,
        gplaceId,
        menuSyncOn,
        connectedRazorPayId,
        freeDeliveryAmount,
        pprestaurantId,
        ppmenuSharingCode,
        menuRates,
        useNativePayment,
        newLat,
        newLong,
        oldLat,
        oldLong,
        newAddress,
        gtsnumber,
        fssai,
        paymentQrcodeLink,
        isUpcoming,
        packageCharges
      ]);
}

BusinessDetailStruct createBusinessDetailStruct({
  int? id,
  String? name,
  String? address,
  String? postalCode,
  String? foodType,
  int? deliveryMinAmount,
  int? deliveryMaxDistance,
  int? deliveryFreeDistance,
  int? averageDeliveryTime,
  int? averageCollectionTime,
  int? deliveryFee,
  String? imgUrl,
  String? telephone,
  String? email,
  String? pswd,
  bool? businessClosed,
  String? announcement,
  String? currencysymbol,
  String? creditcardsurcharge,
  String? sendOrdersToPrinter,
  String? idTimeZone,
  String? disableDelivery,
  String? disableCollection,
  String? clientId,
  String? transactionPercentage,
  String? serviceCharge,
  bool? loyaltyEnabled,
  int? minimumLoyalityAmount,
  bool? cashEnabled,
  bool? cardEnabled,
  String? iOsappId,
  String? androidAppId,
  String? invoiceStartFrom,
  int? weeklyFee,
  String? address1,
  String? address2,
  String? address3,
  double? lat,
  double? long,
  String? nativeAppImage,
  String? appleUrl,
  String? businessName,
  String? businessAddress1,
  String? businessAddress2,
  String? businessAddress3,
  String? businessPostcode,
  String? nativeAppLogoUrl,
  String? webSiteBackImageUrl,
  bool? appOrderingAllowed,
  bool? tableOrderingAllowed,
  int? printerId,
  String? domain,
  String? andoidAppLink,
  String? appScreenshot,
  String? cssColor,
  String? printerLastConnected,
  String? createdOn,
  int? percentageCarges,
  double? fixedCharges,
  String? gplaceId,
  String? menuSyncOn,
  String? connectedRazorPayId,
  int? freeDeliveryAmount,
  String? pprestaurantId,
  String? ppmenuSharingCode,
  int? menuRates,
  bool? useNativePayment,
  double? newLat,
  double? newLong,
  double? oldLat,
  double? oldLong,
  String? newAddress,
  String? gtsnumber,
  String? fssai,
  String? paymentQrcodeLink,
  String? isUpcoming,
  int? packageCharges,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BusinessDetailStruct(
      id: id,
      name: name,
      address: address,
      postalCode: postalCode,
      foodType: foodType,
      deliveryMinAmount: deliveryMinAmount,
      deliveryMaxDistance: deliveryMaxDistance,
      deliveryFreeDistance: deliveryFreeDistance,
      averageDeliveryTime: averageDeliveryTime,
      averageCollectionTime: averageCollectionTime,
      deliveryFee: deliveryFee,
      imgUrl: imgUrl,
      telephone: telephone,
      email: email,
      pswd: pswd,
      businessClosed: businessClosed,
      announcement: announcement,
      currencysymbol: currencysymbol,
      creditcardsurcharge: creditcardsurcharge,
      sendOrdersToPrinter: sendOrdersToPrinter,
      idTimeZone: idTimeZone,
      disableDelivery: disableDelivery,
      disableCollection: disableCollection,
      clientId: clientId,
      transactionPercentage: transactionPercentage,
      serviceCharge: serviceCharge,
      loyaltyEnabled: loyaltyEnabled,
      minimumLoyalityAmount: minimumLoyalityAmount,
      cashEnabled: cashEnabled,
      cardEnabled: cardEnabled,
      iOsappId: iOsappId,
      androidAppId: androidAppId,
      invoiceStartFrom: invoiceStartFrom,
      weeklyFee: weeklyFee,
      address1: address1,
      address2: address2,
      address3: address3,
      lat: lat,
      long: long,
      nativeAppImage: nativeAppImage,
      appleUrl: appleUrl,
      businessName: businessName,
      businessAddress1: businessAddress1,
      businessAddress2: businessAddress2,
      businessAddress3: businessAddress3,
      businessPostcode: businessPostcode,
      nativeAppLogoUrl: nativeAppLogoUrl,
      webSiteBackImageUrl: webSiteBackImageUrl,
      appOrderingAllowed: appOrderingAllowed,
      tableOrderingAllowed: tableOrderingAllowed,
      printerId: printerId,
      domain: domain,
      andoidAppLink: andoidAppLink,
      appScreenshot: appScreenshot,
      cssColor: cssColor,
      printerLastConnected: printerLastConnected,
      createdOn: createdOn,
      percentageCarges: percentageCarges,
      fixedCharges: fixedCharges,
      gplaceId: gplaceId,
      menuSyncOn: menuSyncOn,
      connectedRazorPayId: connectedRazorPayId,
      freeDeliveryAmount: freeDeliveryAmount,
      pprestaurantId: pprestaurantId,
      ppmenuSharingCode: ppmenuSharingCode,
      menuRates: menuRates,
      useNativePayment: useNativePayment,
      newLat: newLat,
      newLong: newLong,
      oldLat: oldLat,
      oldLong: oldLong,
      newAddress: newAddress,
      gtsnumber: gtsnumber,
      fssai: fssai,
      paymentQrcodeLink: paymentQrcodeLink,
      isUpcoming: isUpcoming,
      packageCharges: packageCharges,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BusinessDetailStruct? updateBusinessDetailStruct(
  BusinessDetailStruct? businessDetail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    businessDetail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBusinessDetailStructData(
  Map<String, dynamic> firestoreData,
  BusinessDetailStruct? businessDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (businessDetail == null) {
    return;
  }
  if (businessDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && businessDetail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final businessDetailData =
      getBusinessDetailFirestoreData(businessDetail, forFieldValue);
  final nestedData =
      businessDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = businessDetail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBusinessDetailFirestoreData(
  BusinessDetailStruct? businessDetail, [
  bool forFieldValue = false,
]) {
  if (businessDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(businessDetail.toMap());

  // Add any Firestore field values
  businessDetail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBusinessDetailListFirestoreData(
  List<BusinessDetailStruct>? businessDetails,
) =>
    businessDetails
        ?.map((e) => getBusinessDetailFirestoreData(e, true))
        .toList() ??
    [];
