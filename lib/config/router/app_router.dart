import 'package:go_router/go_router.dart';
import 'package:forms_app/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/cubit',
    builder: (context, state) => const CubitScreen(),
  ),
  GoRoute(
    path: '/bloc',
    builder: (context, state) => const BlocCounterScreen(),
  ),
]);
