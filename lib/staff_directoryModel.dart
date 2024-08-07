// To parse this JSON data, do
//
//     final staffDirectoryModel = staffDirectoryModelFromJson(jsonString);

import 'dart:convert';

StaffDirectoryModel staffDirectoryModelFromJson(String str) => StaffDirectoryModel.fromJson(json.decode(str));

String staffDirectoryModelToJson(StaffDirectoryModel data) => json.encode(data.toJson());

class StaffDirectoryModel {
    int status;
    List<Datum> data;

    StaffDirectoryModel({
        required this.status,
        required this.data,
    });

    factory StaffDirectoryModel.fromJson(Map<String, dynamic> json) => StaffDirectoryModel(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String subject;
    String teachers;

    Datum({
        required this.subject,
        required this.teachers,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        subject: json["subject"],
        teachers: json["teachers"],
    );

    Map<String, dynamic> toJson() => {
        "subject": subject,
        "teachers": teachers,
    };
}
