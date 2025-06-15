import 'package:example/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Demo',
      // theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      theme: lightTheme,       // 浅色主题
      // darkTheme: darkTheme,    // 暗黑主题
      themeMode: ThemeMode.system, // 跟随系统主题
    );
  }
}
