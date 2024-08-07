// To parse this JSON data, do
//
//     final leaveApplyadd = leaveApplyaddFromJson(jsonString);

import 'dart:convert';

LeaveApplyadd leaveApplyaddFromJson(String str) => LeaveApplyadd.fromJson(json.decode(str));

String leaveApplyaddToJson(LeaveApplyadd data) => json.encode(data.toJson());

class LeaveApplyadd {
    int status;
    List<Datum> data;

    LeaveApplyadd({
        required this.status,
        required this.data,
    });

    factory LeaveApplyadd.fromJson(Map<String, dynamic> json) => LeaveApplyadd(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String name;

    Datum({
        required this.id,
        required this.name,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
