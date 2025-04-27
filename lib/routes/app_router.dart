import 'package:go_router/go_router.dart';
import 'package:myapp/features/auth/presentation/pages/auth_page.dart';
import 'package:myapp/features/auth/presentation/pages/home_page.dart';
import 'package:myapp/features/auth/presentation/pages/register_page.dart';

import '../features/auth/presentation/pages/login_or_registerPage.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/intro/presentation/pages/intro_page.dart';
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(onTap: () {  },),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterPage(onTap: () {  },),
    ),
    GoRoute(
      path: '/loginorregister',
      builder: (context, state) => LoginOrRegisterPage(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => AuthPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),



    
  ],
);