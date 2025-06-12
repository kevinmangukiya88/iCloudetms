// To parse this JSON data, do
//
//     final validateOtpResponseModel = validateOtpResponseModelFromJson(jsonString);

import 'dart:convert';

ValidateOtpResponseModel validateOtpResponseModelFromJson(String str) => ValidateOtpResponseModel.fromJson(json.decode(str));

String validateOtpResponseModelToJson(ValidateOtpResponseModel data) => json.encode(data.toJson());

class ValidateOtpResponseModel {
  bool? success;
  int? status;
  String? message;
  Model? model;
  dynamic lstModel;

  ValidateOtpResponseModel({
    this.success,
    this.status,
    this.message,
    this.model,
    this.lstModel,
  });

  factory ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) => ValidateOtpResponseModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    model: json["model"] == null ? null : Model.fromJson(json["model"]),
    lstModel: json["lstModel"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "model": model?.toJson(),
    "lstModel": lstModel,
  };
}

class Model {
  dynamic driverId;
  String? driverNumber;
  String? firstName;
  String? lastName;
  String? driverEmail;
  String? driverPhone;
  DateTime? dob;
  DateTime? dateOfHire;
  String? licenceNumber;
  String? licenceState;
  DateTime? licenceExpiryDate;
  dynamic driverType;
  dynamic driverTypeName;
  dynamic driverOtherType;
  dynamic rateType;
  dynamic rateValue;
  dynamic createdBy;
  DateTime? createdDate;
  dynamic modifiedBy;
  DateTime? modifiedDate;
  dynamic status;
  DateTime? lastLoginTime;
  String? password;
  dynamic companyId;
  String? token;
  dynamic isMapped;
  dynamic coDriverId;
  String? coDriverName;
  String? trailerNumber;
  dynamic trailerId;
  String? truckNumber;
  dynamic truckId;
  String? driverCompanyName;
  String? ein;
  dynamic otherInfo;
  String? address;
  String? country;
  String? province;
  String? city;
  String? postalCode;
  String? otp;
  DateTime? otpExpirationTime;

  Model({
    this.driverId,
    this.driverNumber,
    this.firstName,
    this.lastName,
    this.driverEmail,
    this.driverPhone,
    this.dob,
    this.dateOfHire,
    this.licenceNumber,
    this.licenceState,
    this.licenceExpiryDate,
    this.driverType,
    this.driverTypeName,
    this.driverOtherType,
    this.rateType,
    this.rateValue,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    this.status,
    this.lastLoginTime,
    this.password,
    this.companyId,
    this.token,
    this.isMapped,
    this.coDriverId,
    this.coDriverName,
    this.trailerNumber,
    this.trailerId,
    this.truckNumber,
    this.truckId,
    this.driverCompanyName,
    this.ein,
    this.otherInfo,
    this.address,
    this.country,
    this.province,
    this.city,
    this.postalCode,
    this.otp,
    this.otpExpirationTime,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    driverId: json["driverId"],
    driverNumber: json["driverNumber"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    driverEmail: json["driverEmail"],
    driverPhone: json["driverPhone"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    dateOfHire: json["dateOfHire"] == null ? null : DateTime.parse(json["dateOfHire"]),
    licenceNumber: json["licenceNumber"],
    licenceState: json["licenceState"],
    licenceExpiryDate: json["licenceExpiryDate"] == null ? null : DateTime.parse(json["licenceExpiryDate"]),
    driverType: json["driverType"],
    driverTypeName: json["driverTypeName"],
    driverOtherType: json["driverOtherType"],
    rateType: json["rateType"],
    rateValue: json["rateValue"],
    createdBy: json["createdBy"],
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    modifiedBy: json["modifiedBy"],
    modifiedDate: json["modifiedDate"] == null ? null : DateTime.parse(json["modifiedDate"]),
    status: json["status"],
    lastLoginTime: json["lastLoginTime"] == null ? null : DateTime.parse(json["lastLoginTime"]),
    password: json["password"],
    companyId: json["companyId"],
    token: json["token"],
    isMapped: json["isMapped"],
    coDriverId: json["coDriverId"],
    coDriverName: json["coDriverName"],
    trailerNumber: json["trailerNumber"],
    trailerId: json["trailerId"],
    truckNumber: json["truckNumber"],
    truckId: json["truckId"],
    driverCompanyName: json["driverCompanyName"],
    ein: json["ein"],
    otherInfo: json["otherInfo"],
    address: json["address"],
    country: json["country"],
    province: json["province"],
    city: json["city"],
    postalCode: json["postalCode"],
    otp: json["otp"],
    otpExpirationTime: json["otpExpirationTime"] == null ? null : DateTime.parse(json["otpExpirationTime"]),
  );

  Map<String, dynamic> toJson() => {
    "driverId": driverId,
    "driverNumber": driverNumber,
    "firstName": firstName,
    "lastName": lastName,
    "driverEmail": driverEmail,
    "driverPhone": driverPhone,
    "dob": dob?.toIso8601String(),
    "dateOfHire": dateOfHire?.toIso8601String(),
    "licenceNumber": licenceNumber,
    "licenceState": licenceState,
    "licenceExpiryDate": licenceExpiryDate?.toIso8601String(),
    "driverType": driverType,
    "driverTypeName": driverTypeName,
    "driverOtherType": driverOtherType,
    "rateType": rateType,
    "rateValue": rateValue,
    "createdBy": createdBy,
    "createdDate": createdDate?.toIso8601String(),
    "modifiedBy": modifiedBy,
    "modifiedDate": modifiedDate?.toIso8601String(),
    "status": status,
    "lastLoginTime": lastLoginTime?.toIso8601String(),
    "password": password,
    "companyId": companyId,
    "token": token,
    "isMapped": isMapped,
    "coDriverId": coDriverId,
    "coDriverName": coDriverName,
    "trailerNumber": trailerNumber,
    "trailerId": trailerId,
    "truckNumber": truckNumber,
    "truckId": truckId,
    "driverCompanyName": driverCompanyName,
    "ein": ein,
    "otherInfo": otherInfo,
    "address": address,
    "country": country,
    "province": province,
    "city": city,
    "postalCode": postalCode,
    "otp": otp,
    "otpExpirationTime": otpExpirationTime?.toIso8601String(),
  };
}
