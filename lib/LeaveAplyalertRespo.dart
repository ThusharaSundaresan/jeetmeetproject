// To parse this JSON data, do
//
//     final leaveApplyalert = leaveApplyalertFromJson(jsonString);

import 'dart:convert';

LeaveApplyalert leaveApplyalertFromJson(String str) => LeaveApplyalert.fromJson(json.decode(str));

String leaveApplyalertToJson(LeaveApplyalert data) => json.encode(data.toJson());

class LeaveApplyalert {
    int status;
    Data data;

    LeaveApplyalert({
        required this.status,
        required this.data,
    });

    factory LeaveApplyalert.fromJson(Map<String, dynamic> json) => LeaveApplyalert(
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
    int student;
    int leaveCategory;
    DateTime applyDate;
    DateTime fromDate;
    DateTime toDate;
    dynamic fromTime;
    String toTime;
    int leaveDays;
    String reason;
    int status;
    dynamic attachment;
    dynamic attachmentUrl;

    Data({
        required this.id,
        required this.student,
        required this.leaveCategory,
        required this.applyDate,
        required this.fromDate,
        required this.toDate,
        required this.fromTime,
        required this.toTime,
        required this.leaveDays,
        required this.reason,
        required this.status,
        required this.attachment,
        required this.attachmentUrl,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        student: json["student"],
        leaveCategory: json["leave_category"],
        applyDate: DateTime.parse(json["apply_date"]),
        fromDate: DateTime.parse(json["from_date"]),
        toDate: DateTime.parse(json["to_date"]),
        fromTime: json["from_time"],
        toTime: json["to_time"],
        leaveDays: json["leave_days"],
        reason: json["reason"],
        status: json["status"],
        attachment: json["attachment"],
        attachmentUrl: json["attachment_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "student": student,
        "leave_category": leaveCategory,
        "apply_date": applyDate.toIso8601String(),
        "from_date": "${fromDate.year.toString().padLeft(4, '0')}-${fromDate.month.toString().padLeft(2, '0')}-${fromDate.day.toString().padLeft(2, '0')}",
        "to_date": "${toDate.year.toString().padLeft(4, '0')}-${toDate.month.toString().padLeft(2, '0')}-${toDate.day.toString().padLeft(2, '0')}",
        "from_time": fromTime,
        "to_time": toTime,
        "leave_days": leaveDays,
        "reason": reason,
        "status": status,
        "attachment": attachment,
        "attachment_url": attachmentUrl,
    };
}
