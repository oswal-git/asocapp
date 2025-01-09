import 'package:equatable/equatable.dart';

class DeviceEntity extends Equatable {
  const DeviceEntity({
    required this.id,
    required this.model,
    required this.appversion,
    required this.os,
    required this.versionOS,
    required this.dateCreation,
    required this.dateModification,
    required this.dateLast,
    required this.fcmToken,
    required this.userId,
    required this.enabled,
    required this.isPhysicalDevice,
  });

  final String id;
  final String model;
  final String appversion;
  final String os;
  final String versionOS;
  final DateTime? dateCreation;
  final DateTime? dateModification;
  final String dateLast;
  final String fcmToken;
  final String userId;
  final bool enabled;
  final bool isPhysicalDevice;

  @override
  List<Object?> get props => [
        id,
        model,
        appversion,
        os,
        versionOS,
        dateCreation,
        dateModification,
        dateLast,
        fcmToken,
        userId,
        enabled,
        isPhysicalDevice,
      ];
}
