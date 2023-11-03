import 'package:go_router/go_router.dart';
import 'package:pasen/presentation/screens/login_screen/login_screen.dart';
import 'package:pasen/presentation/screens/second_screen/second_screen.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/second',
      name: 'second',
      builder: (context, state) => const SecondScreen(),
    ),
  ],
);