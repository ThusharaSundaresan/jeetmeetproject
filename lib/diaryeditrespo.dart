// To parse this JSON data, do
//
//     final myDiaryeditModel = myDiaryeditModelFromJson(jsonString);

import 'dart:convert';

MyDiaryeditModel myDiaryeditModelFromJson(String str) => MyDiaryeditModel.fromJson(json.decode(str));

String myDiaryeditModelToJson(MyDiaryeditModel data) => json.encode(data.toJson());

class MyDiaryeditModel {
    int status;
    Data data;

    MyDiaryeditModel({
        required this.status,
        required this.data,
    });

    factory MyDiaryeditModel.fromJson(Map<String, dynamic> json) => MyDiaryeditModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String note;
    DateTime date;

    Data({
        required this.id,
        required this.note,
        required this.date,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        note: json["note"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "note": note,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    };
}
