// To parse this JSON data, do
//
//     final sendOtpResponseModel = sendOtpResponseModelFromJson(jsonString);

import 'dart:convert';

SendOtpResponseModel sendOtpResponseModelFromJson(String str) => SendOtpResponseModel.fromJson(json.decode(str));

String sendOtpResponseModelToJson(SendOtpResponseModel data) => json.encode(data.toJson());

class SendOtpResponseModel {
  bool? success;
  int? status;
  String? message;
  bool? model;
  dynamic lstModel;

  SendOtpResponseModel({
    this.success,
    this.status,
    this.message,
    this.model,
    this.lstModel,
  });

  factory SendOtpResponseModel.fromJson(Map<String, dynamic> json) => SendOtpResponseModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    model: json["model"],
    lstModel: json["lstModel"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "model": model,
    "lstModel": lstModel,
  };
}
