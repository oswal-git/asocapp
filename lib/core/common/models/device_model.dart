import 'package:asocapp/core/common/entities/device_entity.dart';

class DeviceModel extends DeviceEntity {
  const DeviceModel({
    required super.id,
    required super.model,
    required super.appversion,
    required super.os,
    required super.versionOS,
    required super.dateCreation,
    required super.dateModification,
    required super.dateLast,
    required super.fcmToken,
    required super.userId,
    required super.enabled,
    required super.isPhysicalDevice,
  });

  factory DeviceModel.fromJson(Map<String, dynamic> map) {
    DeviceModel deviceModel = DeviceModel(
      id: map['id'] ?? '',
      model: map['model'] ?? '',
      appversion: map['appversion'] ?? '',
      os: map['os'] ?? '',
      versionOS: map['versionOS'] ?? '',
      dateCreation: (map['dateCreation'] == null) ? null : DateTime.parse(map['dateCreation'] as String),
      dateModification: (map['dateModification'] == null) ? null : DateTime.parse(map['dateModification'] as String),
      dateLast: map['dateLast'] ?? '',
      fcmToken: map['fcmToken'] ?? '',
      userId: map['userId'] ?? '',
      enabled: map['enabled'] ?? false,
      isPhysicalDevice: map['isPhysicalDevice'] ?? true,
    );

    return deviceModel;
  }

  Map<String, dynamic>? toJson() {
    return <String, dynamic>{
      'id': id,
      'model': model,
      'appversion': appversion,
      'os': os,
      'versionOS': versionOS,
      'dateCreation': dateCreation,
      'dateModification': dateModification,
      'dateLast': dateLast,
      'fcmToken': fcmToken,
      'userId': userId,
      'enabled': enabled,
      'isPhysicalDevice': isPhysicalDevice,
    };
  }

  static List<DeviceModel> listFromJson(List<dynamic>? json) {
    return json == null ? <DeviceModel>[] : json.map((dynamic value) => DeviceModel.fromJson(value as Map<String, dynamic>)).toList();
  }

  static Map<String, dynamic>? mapFromJson(Map<String, Map<String, dynamic>>? json) {
    final Map<String, dynamic> map = <String, DeviceModel>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = DeviceModel.fromJson(value));
    }

    return map;
  }

  static Map<String, List<DeviceModel>>? mapListFromJson(Map<String, List<Map<String, dynamic>>>? json) {
    final Map<String, List<DeviceModel>> map = <String, List<DeviceModel>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, List<Map<String, dynamic>> value) => map[key] = DeviceModel.listFromJson(value));
    }

    return map;
  }
}
