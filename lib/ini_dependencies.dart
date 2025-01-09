import 'package:asocapp/core/common/cubits/config/initial_config_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

final serviceLocator = GetIt.instance;

void catchUnhandledExceptions(Object error, StackTrace? stack) {
  FlutterError.reportError(
    FlutterErrorDetails(
      exception: error,
      library: 'CUSTOM MESSAGE 1',
      context: ErrorSummary('CUSTOM MESSAGE 2'),
    ),
  );

  // log(stackTrace: stack, label: error.toString());
}

Future<void> iniDependences() async {
  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;

  serviceLocator.registerLazySingleton(() => Hive.box(name: 'user'));

  serviceLocator.registerLazySingleton(() => InitialConfigCubit());
}
