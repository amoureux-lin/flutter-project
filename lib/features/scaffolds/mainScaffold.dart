import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

final tabIndexProvider = StateProvider<int>((ref) => 0);

class MainScaffold extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScaffold({Key? key, required this.navigationShell}) : super(key: key);

  @override
  ConsumerState<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends ConsumerState<MainScaffold> {
  static const tabs = [
    '/home',
    '/party',
    '/message',
    '/square',
    '/personal',
  ];

  late PersistentTabController _controller;

  int _locationToTabIndex(String location) {
    final index = tabs.indexWhere((path) => location.startsWith(path));
    return index < 0 ? 0 : index;
  }

  List<PersistentRouterTabConfig> _buildTabs() => [
    PersistentRouterTabConfig(
      item: ItemConfig(icon: const Icon(Icons.home), title: "首页"),
    ),
    PersistentRouterTabConfig(
      item: ItemConfig(icon: const Icon(Icons.celebration), title: "派对"),
    ),
    PersistentRouterTabConfig(
      item: ItemConfig(icon: const Icon(Icons.message), title: "消息"),
    ),
    PersistentRouterTabConfig(
      item: ItemConfig(icon: const Icon(Icons.grid_view), title: "广场"),
    ),
    PersistentRouterTabConfig(
      item: ItemConfig(icon: const Icon(Icons.person), title: "我的"),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return PersistentTabView.router(
      navigationShell: widget.navigationShell,
      tabs: _buildTabs(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(26), blurRadius: 10),
          ],
        ),
      ),
      onTabChanged: (index) {
        final location = GoRouterState.of(context).uri.toString();
        final currentIndex = _locationToTabIndex(location);
        print(currentIndex);
        if (index != currentIndex) {
          // 跳转路由，触发路由监听同步状态
          context.go(tabs[index]);
        }
      },
    );
  }
}
