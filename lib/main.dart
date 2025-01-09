import 'dart:async';

import 'package:asocapp/core/common/cubits/config/initial_config_cubit.dart';
import 'package:asocapp/core/common/cubits/config/initial_config_state.dart';
import 'package:asocapp/core/routes/go_router_provider.dart';
import 'package:asocapp/core/theme/app_theme.dart';
import 'package:asocapp/generated/l10n.dart';
import 'package:asocapp/ini_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Hive.registerAdapter(hiveState.StateAdapter());
    // Hive.registerAdapter(HiveKitsEnlazadosAdapter());
    await iniDependences();

    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<InitialConfigCubit>(
          create: (_) => serviceLocator<InitialConfigCubit>()..loadInitialConfig(),
          // create: (_) => InitialConfigCubit()..loadInitialConfig(),
        ),
      ],
      child: const MainApp(),
    ));
  }, catchUnhandledExceptions);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouterProvider.router;

    return BlocBuilder<InitialConfigCubit, InitialConfigState>(builder: (context, state) {
      if (state is InitialConfigLoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is InitialConfigLoadedState) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Inside trainning',
          routerConfig: goRouter,
          theme: AppTheme.darkThemeMode,
          localizationsDelegates: const [
            S.delegate,
            // FormBuilderLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      } else if (state is InitialConfigErrorState) {
        return Center(child: Text('Error: ${state.message}'));
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
