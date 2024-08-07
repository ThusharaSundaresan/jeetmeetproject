// To parse this JSON data, do
//
//     final leaveApplySave = leaveApplySaveFromJson(jsonString);

import 'dart:convert';

LeaveApplySave leaveApplySaveFromJson(String str) => LeaveApplySave.fromJson(json.decode(str));

String leaveApplySaveToJson(LeaveApplySave data) => json.encode(data.toJson());

class LeaveApplySave {
    int status;
    List<Datum> data;

    LeaveApplySave({
        required this.status,
        required this.data,
    });

    factory LeaveApplySave.fromJson(Map<String, dynamic> json) => LeaveApplySave(
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
    int student;
    int leaveCategory;
    DateTime applyDate;
    DateTime fromDate;
    DateTime toDate;
    int leaveDays;
    String reason;
    int status;
    String? attachment;
    String? attachmentUrl;
    Studentname studentname;
    LeaveCategoryname leaveCategoryname;

    Datum({
        required this.id,
        required this.student,
        required this.leaveCategory,
        required this.applyDate,
        required this.fromDate,
        required this.toDate,
        required this.leaveDays,
        required this.reason,
        required this.status,
        required this.attachment,
        required this.attachmentUrl,
        required this.studentname,
        required this.leaveCategoryname,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        student: json["student"],
        leaveCategory: json["leave_category"],
        applyDate: DateTime.parse(json["apply_date"]),
        fromDate: DateTime.parse(json["from_date"]),
        toDate: DateTime.parse(json["to_date"]),
        leaveDays: json["leave_days"],
        reason: json["reason"],
        status: json["status"],
        attachment: json["attachment"],
        attachmentUrl: json["attachment_url"],
        studentname: Studentname.fromJson(json["studentname"]),
        leaveCategoryname: LeaveCategoryname.fromJson(json["leave_categoryname"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "student": student,
        "leave_category": leaveCategory,
        "apply_date": applyDate.toIso8601String(),
        "from_date": "${fromDate.year.toString().padLeft(4, '0')}-${fromDate.month.toString().padLeft(2, '0')}-${fromDate.day.toString().padLeft(2, '0')}",
        "to_date": "${toDate.year.toString().padLeft(4, '0')}-${toDate.month.toString().padLeft(2, '0')}-${toDate.day.toString().padLeft(2, '0')}",
        "leave_days": leaveDays,
        "reason": reason,
        "status": status,
        "attachment": attachment,
        "attachment_url": attachmentUrl,
        "studentname": studentname.toJson(),
        "leave_categoryname": leaveCategoryname.toJson(),
    };
}

class LeaveCategoryname {
    int id;
    String name;

    LeaveCategoryname({
        required this.id,
        required this.name,
    });

    factory LeaveCategoryname.fromJson(Map<String, dynamic> json) => LeaveCategoryname(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class Studentname {
    int id;
    String firstName;
    String middleName;
    String lastName;

    Studentname({
        required this.id,
        required this.firstName,
        required this.middleName,
        required this.lastName,
    });

    factory Studentname.fromJson(Map<String, dynamic> json) => Studentname(
        id: json["id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
    };
}
