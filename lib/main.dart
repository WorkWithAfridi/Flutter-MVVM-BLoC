import 'package:flutter/material.dart';

import 'common/resources/theme/app_theme.dart';
import 'common/utilities/di/dependency_injection.dart';
import 'common/utilities/routing/app_routes.dart';
import 'common/utilities/routing/route_controller.dart';
import 'data/local/local_storage.dart';

void main(List<String> args) async {
  await initApp();
  runApp(const DiaryApp());
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage().init();
  DependencyInjection().init();
}

class DiaryApp extends StatelessWidget {
  const DiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiaryApp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      onGenerateRoute: ROUTECONTROLLER.routeController,
      initialRoute: ROUTES.getSplashRoute,
    );
  }
}
