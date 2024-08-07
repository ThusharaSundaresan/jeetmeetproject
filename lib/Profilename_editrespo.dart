// To parse this JSON data, do
//
//     final profileNameEdit = profileNameEditFromJson(jsonString);

import 'dart:convert';

ProfileNameEdit profileNameEditFromJson(String str) => ProfileNameEdit.fromJson(json.decode(str));

String profileNameEditToJson(ProfileNameEdit data) => json.encode(data.toJson());

class ProfileNameEdit {
    int status;
    Data data;

    ProfileNameEdit({
        required this.status,
        required this.data,
    });

    factory ProfileNameEdit.fromJson(Map<String, dynamic> json) => ProfileNameEdit(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    String firstName;
    String middleName;
    String lastName;

    Data({
        required this.firstName,
        required this.middleName,
        required this.lastName,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
    };
}
