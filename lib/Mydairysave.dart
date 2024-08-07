// To parse this JSON data, do
//
//     final myDiarysaveModel = myDiarysaveModelFromJson(jsonString);

import 'dart:convert';

MyDiarysaveModel myDiarysaveModelFromJson(String str) => MyDiarysaveModel.fromJson(json.decode(str));

String myDiarysaveModelToJson(MyDiarysaveModel data) => json.encode(data.toJson());

class MyDiarysaveModel {
    int status;
    String message;

    MyDiarysaveModel({
        required this.status,
        required this.message,
    });

    factory MyDiarysaveModel.fromJson(Map<String, dynamic> json) => MyDiarysaveModel(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}
