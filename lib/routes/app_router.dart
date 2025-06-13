import 'package:go_router/go_router.dart';
import '../features/home/home_page.dart';
import '../features/message/message_page.dart';
import '../features/party/party_page.dart';
import '../features/personal/personal_page.dart';
import '../features/scaffolds/mainScaffold.dart';
import '../features/square/square_page.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => MainScaffold(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/party',
              builder: (context, state) => const PartyPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/message',
              builder: (context, state) => const MessagePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/square',
              builder: (context, state) => const SquarePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/personal',
              builder: (context, state) => const PersonalPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
