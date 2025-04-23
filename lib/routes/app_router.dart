import 'package:go_router/go_router.dart';

import '../features/intro/presentation/pages/intro_page.dart';
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroPage(),
    ),
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) => const LoginPage(),
    // )
  ],
);