import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'config/theme.dart';

void main() {
  dotenv.load(fileName: ".env");
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      highContrastTheme: ThemeData(),
      highContrastDarkTheme: ThemeData(),
      darkTheme: AppTheme.darkTheme,
      title: 'Pulkit Birla',
      // routes: AppRoutes.routes,
      // initialRoute: AppRoutes.alert,
      home: Placeholder(),
    );
  }
}
