import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_demo/theme/theme_helper.dart';
import 'package:job_demo/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,

  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'job_demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboardingOneScreen,
      routes: AppRoutes.routes,
    );
  }
}
