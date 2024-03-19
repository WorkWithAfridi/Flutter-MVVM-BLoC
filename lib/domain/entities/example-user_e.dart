// To parse this JSON data, do
//
//     final ExampleUserApiEntity = ExampleUserApiEntityFromJson(jsonString);

import 'dart:convert';

ExampleUserApiEntity ExampleUserApiEntityFromJson(String str) => ExampleUserApiEntity.fromJson(json.decode(str));

String ExampleUserApiEntityToJson(ExampleUserApiEntity data) => json.encode(data.toJson());

class ExampleUserApiEntity {
  int? code;
  String? status;
  dynamic message;
  Data? data;
  String? redirect;

  ExampleUserApiEntity({
    this.code,
    this.status,
    this.message,
    this.data,
    this.redirect,
  });

  ExampleUserApiEntity copyWith({
    int? code,
    String? status,
    dynamic message,
    Data? data,
    String? redirect,
  }) =>
      ExampleUserApiEntity(
        code: code ?? this.code,
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        redirect: redirect ?? this.redirect,
      );

  factory ExampleUserApiEntity.fromJson(Map<String, dynamic> json) => ExampleUserApiEntity(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        redirect: json["redirect"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data?.toJson(),
        "redirect": redirect,
      };
}

class Data {
  int? id;
  String? uuid;
  dynamic projectId;
  dynamic tenantId;
  String? name;
  String? nameExt;
  dynamic slug;
  String? email;
  dynamic apiToken;
  dynamic apiTokenGeneratedAt;
  int? isTenantEditable;
  List<dynamic>? permissions;
  int? isActive;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic deletedBy;
  dynamic nameInitial;
  String? firstName;
  String? lastName;
  String? fullName;
  dynamic dateOfBirth;
  dynamic gender;
  dynamic deviceToken;
  String? billingName;
  String? billingFirstName;
  String? billingLastName;
  String? billingMobileNo;
  String? billingEmail;
  dynamic billingZipCode;
  String? billingAddress;
  int? billingDivisionId;
  String? billingDivisionName;
  int? billingDistrictId;
  String? billingDistrictName;
  int? billingAreaId;
  String? billingAreaName;
  String? billingThana;
  String? billingPostCode;
  int? shippingIsSameAsBilling;
  String? shippingName;
  String? shippingFirstName;
  String? shippingLastName;
  String? shippingMobileNo;
  String? shippingEmail;
  dynamic shippingZipCode;
  String? shippingAddress;
  int? shippingDivisionId;
  String? shippingDivisionName;
  int? shippingDistrictId;
  String? shippingDistrictName;
  int? shippingAreaId;
  String? shippingAreaName;
  String? shippingThana;
  String? shippingPostCode;
  dynamic vendorId;
  dynamic vendorName;
  dynamic vendorAddress;
  dynamic phone;
  String? mobileNo;
  DateTime? firstLoginAt;
  DateTime? lastLoginAt;
  String? authToken;
  DateTime? emailVerifiedAt;
  dynamic emailVerificationCode;
  List<String>? groupIds;
  int? isTest;
  String? type;
  List<Group>? groups;

  Data({
    this.id,
    this.uuid,
    this.projectId,
    this.tenantId,
    this.name,
    this.nameExt,
    this.slug,
    this.email,
    this.apiToken,
    this.apiTokenGeneratedAt,
    this.isTenantEditable,
    this.permissions,
    this.isActive,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.deletedBy,
    this.nameInitial,
    this.firstName,
    this.lastName,
    this.fullName,
    this.dateOfBirth,
    this.gender,
    this.deviceToken,
    this.billingName,
    this.billingFirstName,
    this.billingLastName,
    this.billingMobileNo,
    this.billingEmail,
    this.billingZipCode,
    this.billingAddress,
    this.billingDivisionId,
    this.billingDivisionName,
    this.billingDistrictId,
    this.billingDistrictName,
    this.billingAreaId,
    this.billingAreaName,
    this.billingThana,
    this.billingPostCode,
    this.shippingIsSameAsBilling,
    this.shippingName,
    this.shippingFirstName,
    this.shippingLastName,
    this.shippingMobileNo,
    this.shippingEmail,
    this.shippingZipCode,
    this.shippingAddress,
    this.shippingDivisionId,
    this.shippingDivisionName,
    this.shippingDistrictId,
    this.shippingDistrictName,
    this.shippingAreaId,
    this.shippingAreaName,
    this.shippingThana,
    this.shippingPostCode,
    this.vendorId,
    this.vendorName,
    this.vendorAddress,
    this.phone,
    this.mobileNo,
    this.firstLoginAt,
    this.lastLoginAt,
    this.authToken,
    this.emailVerifiedAt,
    this.emailVerificationCode,
    this.groupIds,
    this.isTest,
    this.type,
    this.groups,
  });

  Data copyWith({
    int? id,
    String? uuid,
    dynamic projectId,
    dynamic tenantId,
    String? name,
    String? nameExt,
    dynamic slug,
    String? email,
    dynamic apiToken,
    dynamic apiTokenGeneratedAt,
    int? isTenantEditable,
    List<dynamic>? permissions,
    int? isActive,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic deletedAt,
    dynamic deletedBy,
    dynamic nameInitial,
    String? firstName,
    String? lastName,
    String? fullName,
    dynamic dateOfBirth,
    dynamic gender,
    dynamic deviceToken,
    String? billingName,
    String? billingFirstName,
    String? billingLastName,
    String? billingMobileNo,
    String? billingEmail,
    dynamic billingZipCode,
    String? billingAddress,
    int? billingDivisionId,
    String? billingDivisionName,
    int? billingDistrictId,
    String? billingDistrictName,
    int? billingAreaId,
    String? billingAreaName,
    String? billingThana,
    String? billingPostCode,
    int? shippingIsSameAsBilling,
    String? shippingName,
    String? shippingFirstName,
    String? shippingLastName,
    String? shippingMobileNo,
    String? shippingEmail,
    dynamic shippingZipCode,
    String? shippingAddress,
    int? shippingDivisionId,
    String? shippingDivisionName,
    int? shippingDistrictId,
    String? shippingDistrictName,
    int? shippingAreaId,
    String? shippingAreaName,
    String? shippingThana,
    String? shippingPostCode,
    dynamic vendorId,
    dynamic vendorName,
    dynamic vendorAddress,
    dynamic phone,
    String? mobileNo,
    DateTime? firstLoginAt,
    DateTime? lastLoginAt,
    String? authToken,
    DateTime? emailVerifiedAt,
    dynamic emailVerificationCode,
    List<String>? groupIds,
    int? isTest,
    String? type,
    List<Group>? groups,
  }) =>
      Data(
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        projectId: projectId ?? this.projectId,
        tenantId: tenantId ?? this.tenantId,
        name: name ?? this.name,
        nameExt: nameExt ?? this.nameExt,
        slug: slug ?? this.slug,
        email: email ?? this.email,
        apiToken: apiToken ?? this.apiToken,
        apiTokenGeneratedAt: apiTokenGeneratedAt ?? this.apiTokenGeneratedAt,
        isTenantEditable: isTenantEditable ?? this.isTenantEditable,
        permissions: permissions ?? this.permissions,
        isActive: isActive ?? this.isActive,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedBy: deletedBy ?? this.deletedBy,
        nameInitial: nameInitial ?? this.nameInitial,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        deviceToken: deviceToken ?? this.deviceToken,
        billingName: billingName ?? this.billingName,
        billingFirstName: billingFirstName ?? this.billingFirstName,
        billingLastName: billingLastName ?? this.billingLastName,
        billingMobileNo: billingMobileNo ?? this.billingMobileNo,
        billingEmail: billingEmail ?? this.billingEmail,
        billingZipCode: billingZipCode ?? this.billingZipCode,
        billingAddress: billingAddress ?? this.billingAddress,
        billingDivisionId: billingDivisionId ?? this.billingDivisionId,
        billingDivisionName: billingDivisionName ?? this.billingDivisionName,
        billingDistrictId: billingDistrictId ?? this.billingDistrictId,
        billingDistrictName: billingDistrictName ?? this.billingDistrictName,
        billingAreaId: billingAreaId ?? this.billingAreaId,
        billingAreaName: billingAreaName ?? this.billingAreaName,
        billingThana: billingThana ?? this.billingThana,
        billingPostCode: billingPostCode ?? this.billingPostCode,
        shippingIsSameAsBilling: shippingIsSameAsBilling ?? this.shippingIsSameAsBilling,
        shippingName: shippingName ?? this.shippingName,
        shippingFirstName: shippingFirstName ?? this.shippingFirstName,
        shippingLastName: shippingLastName ?? this.shippingLastName,
        shippingMobileNo: shippingMobileNo ?? this.shippingMobileNo,
        shippingEmail: shippingEmail ?? this.shippingEmail,
        shippingZipCode: shippingZipCode ?? this.shippingZipCode,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingDivisionId: shippingDivisionId ?? this.shippingDivisionId,
        shippingDivisionName: shippingDivisionName ?? this.shippingDivisionName,
        shippingDistrictId: shippingDistrictId ?? this.shippingDistrictId,
        shippingDistrictName: shippingDistrictName ?? this.shippingDistrictName,
        shippingAreaId: shippingAreaId ?? this.shippingAreaId,
        shippingAreaName: shippingAreaName ?? this.shippingAreaName,
        shippingThana: shippingThana ?? this.shippingThana,
        shippingPostCode: shippingPostCode ?? this.shippingPostCode,
        vendorId: vendorId ?? this.vendorId,
        vendorName: vendorName ?? this.vendorName,
        vendorAddress: vendorAddress ?? this.vendorAddress,
        phone: phone ?? this.phone,
        mobileNo: mobileNo ?? this.mobileNo,
        firstLoginAt: firstLoginAt ?? this.firstLoginAt,
        lastLoginAt: lastLoginAt ?? this.lastLoginAt,
        authToken: authToken ?? this.authToken,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        emailVerificationCode: emailVerificationCode ?? this.emailVerificationCode,
        groupIds: groupIds ?? this.groupIds,
        isTest: isTest ?? this.isTest,
        type: type ?? this.type,
        groups: groups ?? this.groups,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        uuid: json["uuid"],
        projectId: json["project_id"],
        tenantId: json["tenant_id"],
        name: json["name"],
        nameExt: json["name_ext"],
        slug: json["slug"],
        email: json["email"],
        apiToken: json["api_token"],
        apiTokenGeneratedAt: json["api_token_generated_at"],
        isTenantEditable: json["is_tenant_editable"],
        permissions: json["permissions"] == null ? [] : List<dynamic>.from(json["permissions"]!.map((x) => x)),
        isActive: json["is_active"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        deletedBy: json["deleted_by"],
        nameInitial: json["name_initial"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        fullName: json["full_name"],
        dateOfBirth: json["date_of_birth"],
        gender: json["gender"],
        deviceToken: json["device_token"],
        billingName: json["billing_name"],
        billingFirstName: json["billing_first_name"],
        billingLastName: json["billing_last_name"],
        billingMobileNo: json["billing_mobile_no"],
        billingEmail: json["billing_email"],
        billingZipCode: json["billing_zip_code"],
        billingAddress: json["billing_address"],
        billingDivisionId: json["billing_division_id"],
        billingDivisionName: json["billing_division_name"],
        billingDistrictId: json["billing_district_id"],
        billingDistrictName: json["billing_district_name"],
        billingAreaId: json["billing_area_id"],
        billingAreaName: json["billing_area_name"],
        billingThana: json["billing_thana"],
        billingPostCode: json["billing_post_code"],
        shippingIsSameAsBilling: json["shipping_is_same_as_billing"],
        shippingName: json["shipping_name"],
        shippingFirstName: json["shipping_first_name"],
        shippingLastName: json["shipping_last_name"],
        shippingMobileNo: json["shipping_mobile_no"],
        shippingEmail: json["shipping_email"],
        shippingZipCode: json["shipping_zip_code"],
        shippingAddress: json["shipping_address"],
        shippingDivisionId: json["shipping_division_id"],
        shippingDivisionName: json["shipping_division_name"],
        shippingDistrictId: json["shipping_district_id"],
        shippingDistrictName: json["shipping_district_name"],
        shippingAreaId: json["shipping_area_id"],
        shippingAreaName: json["shipping_area_name"],
        shippingThana: json["shipping_thana"],
        shippingPostCode: json["shipping_post_code"],
        vendorId: json["vendor_id"],
        vendorName: json["vendor_name"],
        vendorAddress: json["vendor_address"],
        phone: json["phone"],
        mobileNo: json["mobile_no"],
        firstLoginAt: json["first_login_at"] == null ? null : DateTime.parse(json["first_login_at"]),
        lastLoginAt: json["last_login_at"] == null ? null : DateTime.parse(json["last_login_at"]),
        authToken: json["auth_token"],
        emailVerifiedAt: json["email_verified_at"] == null ? null : DateTime.parse(json["email_verified_at"]),
        emailVerificationCode: json["email_verification_code"],
        groupIds: json["group_ids"] == null ? [] : List<String>.from(json["group_ids"]!.map((x) => x)),
        isTest: json["is_test"],
        type: json["type"],
        groups: json["groups"] == null ? [] : List<Group>.from(json["groups"]!.map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "project_id": projectId,
        "tenant_id": tenantId,
        "name": name,
        "name_ext": nameExt,
        "slug": slug,
        "email": email,
        "api_token": apiToken,
        "api_token_generated_at": apiTokenGeneratedAt,
        "is_tenant_editable": isTenantEditable,
        "permissions": permissions == null ? [] : List<dynamic>.from(permissions!.map((x) => x)),
        "is_active": isActive,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "deleted_by": deletedBy,
        "name_initial": nameInitial,
        "first_name": firstName,
        "last_name": lastName,
        "full_name": fullName,
        "date_of_birth": dateOfBirth,
        "gender": gender,
        "device_token": deviceToken,
        "billing_name": billingName,
        "billing_first_name": billingFirstName,
        "billing_last_name": billingLastName,
        "billing_mobile_no": billingMobileNo,
        "billing_email": billingEmail,
        "billing_zip_code": billingZipCode,
        "billing_address": billingAddress,
        "billing_division_id": billingDivisionId,
        "billing_division_name": billingDivisionName,
        "billing_district_id": billingDistrictId,
        "billing_district_name": billingDistrictName,
        "billing_area_id": billingAreaId,
        "billing_area_name": billingAreaName,
        "billing_thana": billingThana,
        "billing_post_code": billingPostCode,
        "shipping_is_same_as_billing": shippingIsSameAsBilling,
        "shipping_name": shippingName,
        "shipping_first_name": shippingFirstName,
        "shipping_last_name": shippingLastName,
        "shipping_mobile_no": shippingMobileNo,
        "shipping_email": shippingEmail,
        "shipping_zip_code": shippingZipCode,
        "shipping_address": shippingAddress,
        "shipping_division_id": shippingDivisionId,
        "shipping_division_name": shippingDivisionName,
        "shipping_district_id": shippingDistrictId,
        "shipping_district_name": shippingDistrictName,
        "shipping_area_id": shippingAreaId,
        "shipping_area_name": shippingAreaName,
        "shipping_thana": shippingThana,
        "shipping_post_code": shippingPostCode,
        "vendor_id": vendorId,
        "vendor_name": vendorName,
        "vendor_address": vendorAddress,
        "phone": phone,
        "mobile_no": mobileNo,
        "first_login_at": firstLoginAt?.toIso8601String(),
        "last_login_at": lastLoginAt?.toIso8601String(),
        "auth_token": authToken,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "email_verification_code": emailVerificationCode,
        "group_ids": groupIds == null ? [] : List<dynamic>.from(groupIds!.map((x) => x)),
        "is_test": isTest,
        "type": type,
        "groups": groups == null ? [] : List<dynamic>.from(groups!.map((x) => x.toJson())),
      };
}

class Group {
  int? id;
  String? uuid;
  String? name;
  dynamic nameExt;
  String? title;
  Map<String, int>? permissions;
  int? isActive;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  Pivot? pivot;

  Group({
    this.id,
    this.uuid,
    this.name,
    this.nameExt,
    this.title,
    this.permissions,
    this.isActive,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Group copyWith({
    int? id,
    String? uuid,
    String? name,
    dynamic nameExt,
    String? title,
    Map<String, int>? permissions,
    int? isActive,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    Pivot? pivot,
  }) =>
      Group(
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        nameExt: nameExt ?? this.nameExt,
        title: title ?? this.title,
        permissions: permissions ?? this.permissions,
        isActive: isActive ?? this.isActive,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pivot: pivot ?? this.pivot,
      );

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        uuid: json["uuid"],
        name: json["name"],
        nameExt: json["name_ext"],
        title: json["title"],
        permissions: Map.from(json["permissions"]!).map((k, v) => MapEntry<String, int>(k, v)),
        isActive: json["is_active"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        pivot: json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "name": name,
        "name_ext": nameExt,
        "title": title,
        "permissions": Map.from(permissions!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "is_active": isActive,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "pivot": pivot?.toJson(),
      };
}

class Pivot {
  int? userId;
  int? groupId;

  Pivot({
    this.userId,
    this.groupId,
  });

  Pivot copyWith({
    int? userId,
    int? groupId,
  }) =>
      Pivot(
        userId: userId ?? this.userId,
        groupId: groupId ?? this.groupId,
      );

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        userId: json["user_id"],
        groupId: json["group_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "group_id": groupId,
      };
}
