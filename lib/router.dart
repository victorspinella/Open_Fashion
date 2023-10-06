import 'package:go_router/go_router.dart';
import 'package:open_fashion/screens/menu_screen.dart';
import 'package:open_fashion/screens/not_found_screen.dart';
import 'package:open_fashion/screens/blog_post.dart';
import 'package:open_fashion/screens/home.dart';
import 'package:open_fashion/screens/numbers_page.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NotFoundScreen(),
    ),
    GoRoute(
      path: '/menu',
      builder: (context, state) => const MenuScreen(),
    ),
    GoRoute(
      path: '/blog',
      builder: (context, state) => const BlogPost(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/page',
      builder: (context, state) => const NumbersPage(),
    ),
  ],
);
