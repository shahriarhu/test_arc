// To parse this JSON data, do
//
//     final profilesModel = profilesModelFromJson(jsonString);

import 'dart:convert';

List<ProfilesModel> profilesModelFromJson(String str) => List<ProfilesModel>.from(json.decode(str).map((x) => ProfilesModel.fromJson(x)));

String profilesModelToJson(List<ProfilesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfilesModel {
  String? addTypes;
  String? createAt;
  bool? profilesModelDefault;
  bool? doubleStatus;
  String? doubleType;
  String? duration;
  dynamic endTime;
  int? id;
  dynamic multiSide;
  bool? multiSlideStatus;
  dynamic multiTopBottom;
  dynamic multiType;
  String? name;
  String? serial;
  dynamic startTime;
  bool? status;
  dynamic thumnil;
  String? uuid;

  ProfilesModel({
    this.addTypes,
    this.createAt,
    this.profilesModelDefault,
    this.doubleStatus,
    this.doubleType,
    this.duration,
    this.endTime,
    this.id,
    this.multiSide,
    this.multiSlideStatus,
    this.multiTopBottom,
    this.multiType,
    this.name,
    this.serial,
    this.startTime,
    this.status,
    this.thumnil,
    this.uuid,
  });

  factory ProfilesModel.fromJson(Map<String, dynamic> json) => ProfilesModel(
        addTypes: json["addTypes"],
        createAt: json["createAt"],
        profilesModelDefault: json["default"],
        doubleStatus: json["doubleStatus"],
        doubleType: json["doubleType"],
        duration: json["duration"],
        endTime: json["endTime"],
        id: json["id"],
        multiSide: json["multiSide"],
        multiSlideStatus: json["multiSlideStatus"],
        multiTopBottom: json["multiTopBottom"],
        multiType: json["multiType"],
        name: json["name"],
        serial: json["serial"],
        startTime: json["startTime"],
        status: json["status"],
        thumnil: json["thumnil"],
        uuid: json["uuid"],
      );

  Map<String, dynamic> toJson() => {
        "addTypes": addTypes,
        "createAt": createAt,
        "default": profilesModelDefault,
        "doubleStatus": doubleStatus,
        "doubleType": doubleType,
        "duration": duration,
        "endTime": endTime,
        "id": id,
        "multiSide": multiSide,
        "multiSlideStatus": multiSlideStatus,
        "multiTopBottom": multiTopBottom,
        "multiType": multiType,
        "name": name,
        "serial": serial,
        "startTime": startTime,
        "status": status,
        "thumnil": thumnil,
        "uuid": uuid,
      };
}
