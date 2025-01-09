import 'package:asocapp/core/routes/routes_name.dart';
import 'package:asocapp/features/auth/presentation/pages/login_page.dart';
import 'package:asocapp/features/auth/presentation/pages/register_page.dart';
import 'package:asocapp/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class GoRouterProvider {
  static final GoRouter router = GoRouter(
    // navigatorKey: _rootNavigatorKey,
    initialLocation: registerRoute, // rootRoute,
    errorBuilder: (context, state) => LoginPage(key: state.pageKey),
    // redirect: (BuildContext context, GoRouterState goRouterState) {
    //   final bool isLoggedIn = context.watch<AppUserCubit>().state is AppUserLoggedInState;
    //   final bool isLoggingIn = goRouterState.uri.toString() == homeRoute;

    //   if (!isLoggedIn && !isLoggingIn) return homeRoute;
    //   if (isLoggedIn && isLoggingIn) return blogRoute;
    //   return null;
    // },
    routes: [
      GoRoute(
        path: rootRoute,
        builder: (context, state) => SplashPage(key: state.pageKey),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => LoginPage(key: state.pageKey),
      ),
      GoRoute(
        path: registerRoute,
        builder: (context, state) => RegisterPage(key: state.pageKey),
      ),
    ],
  );
}
