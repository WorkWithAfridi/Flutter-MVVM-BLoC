import 'package:flutter/material.dart';

import '../../../presentation/views/dashboard/dashboard_v.dart';
import '../../../presentation/views/splash/splash_v.dart';
import '../logger.dart';
import 'app_routes.dart';
import 'custom_route_transition/custom_route_transition.dart';

class ROUTECONTROLLER {
  static Route<dynamic> routeController(RouteSettings settings) {
    switch (settings.name) {
      case ROUTES.getSplashRoute:
        return CustomTransitionPageRoute(
          childWidget: const SplashView(),
        );
      case ROUTES.getDashboardRoute:
        return CustomTransitionPageRoute(
          childWidget: const DashboardV(),
        );
      default:
        logger.d(settings.name.toString());
        throw 'Not a valid route ';
    }
  }
}
