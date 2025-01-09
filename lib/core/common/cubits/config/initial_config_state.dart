import 'package:asocapp/core/common/entities/global_variables_entity.dart';

abstract class InitialConfigState {}

class InitialConfigLoadingState extends InitialConfigState {}

class InitialConfigLoadedState extends InitialConfigState {
  final GlobalVariablesEntity config;

  InitialConfigLoadedState(this.config);
}

class InitialConfigErrorState extends InitialConfigState {
  final String message;

  InitialConfigErrorState(this.message);
}
