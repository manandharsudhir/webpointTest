// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/homepage/view/screens/homepage_view.dart' as _i2;
import '../../features/splash/view/screens/splash_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    HomepageViewRoute.name: (routeData) {
      final args = routeData.argsAs<HomepageViewRouteArgs>(
          orElse: () => const HomepageViewRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomepageView(key: args.key),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          HomepageViewRoute.name,
          path: '/homepage-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i3.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.HomepageView]
class HomepageViewRoute extends _i3.PageRouteInfo<HomepageViewRouteArgs> {
  HomepageViewRoute({_i4.Key? key})
      : super(
          HomepageViewRoute.name,
          path: '/homepage-view',
          args: HomepageViewRouteArgs(key: key),
        );

  static const String name = 'HomepageViewRoute';
}

class HomepageViewRouteArgs {
  const HomepageViewRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomepageViewRouteArgs{key: $key}';
  }
}
