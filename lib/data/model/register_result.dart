// To parse this JSON data, do
//
//     final resModel = resModelFromJson(jsonString);

import 'dart:convert';

ResModel resModelFromJson(String str) => ResModel.fromJson(json.decode(str));

String resModelToJson(ResModel data) => json.encode(data.toJson());

class ResModel {
    String status;
    String message;
    String data;

    ResModel({
        this.status,
        this.message,
        this.data,
    });

    factory ResModel.fromJson(Map<String, dynamic> json) => ResModel(
        status: json["status"],
        message: json["message"],
        data: json["data"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
    };
}
