import 'package:go_router/go_router.dart';
import 'package:hello_app/presentation/screens/animated/animated_screen.dart';
import 'package:hello_app/presentation/screens/home/home_screen.dart';
import 'package:hello_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:hello_app/presentation/screens/cards/cards_screen.dart';
import 'package:hello_app/presentation/screens/progress/progress_screen.dart';
import 'package:hello_app/presentation/screens/riverpod/riverpod_screen.dart';
import 'package:hello_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:hello_app/presentation/screens/theme/theme_changer_screen.dart';
import 'package:hello_app/presentation/screens/tutorial/tutorial_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

    GoRoute(
      path: '/animated-container',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: TutorialScreen.name,
      builder: (context, state) => const TutorialScreen(),
    ),

    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),

    GoRoute(
      path: '/counter-river',
      name: RiverpodScreen.name,
      builder: (context, state) => const RiverpodScreen(),
    ),
  ],
);
