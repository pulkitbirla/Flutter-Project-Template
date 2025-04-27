import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'config/theme.dart';
import 'package:myapp/features/intro/presentation/bloc/intro_bloc.dart';

import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'routes/app_router.dart'; // Import IntroBloc


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  // Made main async to load dotenv
  await dotenv.load(fileName: kIsWeb ? ".env" : "assets/.env");
  if (kIsWeb) {
    setUrlStrategy(PathUrlStrategy());
  }

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroBloc>(
          create: (context) => IntroBloc(), // Provide IntroBloc
        ),
        BlocProvider<AuthBloc>(
          // TODO: Replace with actual dependency injection for AuthBloc
          // create: (context) => getIt<AuthBloc>(), // Example using GetIt
          create: (context) => AuthBloc(), 
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        theme: AppTheme.lightTheme, // Assuming AppTheme is defined
        routerConfig: goRouter, // Use the goRouter instance
      ),
    );
  }
}
