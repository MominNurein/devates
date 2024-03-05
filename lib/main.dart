import 'package:devates/core/theme/light_theme.dart';
import 'package:devates/features/home/presentation/screens/home_screen.dart';
import 'package:devates/firebase_options.dart';
import 'package:devates/helpers/route_helper.dart';
import 'package:devates/utils/app_constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // routes: RouteHelper.routes,
      routerConfig: RouteHelper.router,
    );
  }
}
