import 'package:flutter/material.dart';

/// 🌞 浅色主题配置
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light, // 设置亮色主题

  primarySwatch: Colors.green, // 主题主色调，用于按钮、高亮等
  primaryColor: Colors.green,  // 明确设置主颜色（可选）

  scaffoldBackgroundColor: Colors.white, // 页面背景色
  fontFamily: 'MyFont', // 全局字体（需在 pubspec.yaml 中配置）

  /// AppBar 样式配置
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green, // 背景色
    elevation: 4, // 阴影高度
    centerTitle: true, // 标题居中
    titleTextStyle: TextStyle( // 标题样式
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white), // 返回按钮/icon 颜色
  ),

  /// 全局文字样式配置（根据 Material TextTheme 命名）
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),  // 大标题
    headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600), // 中标题
    bodyMedium: TextStyle(fontSize: 16), // 正文
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500), // 标签、按钮
  ),

  /// 按钮样式（ElevatedButton）
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.indigo, // 背景色
      foregroundColor: Colors.white,  // 前景色（文字/图标）
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder( // 圆角按钮
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

  /// 卡片样式（Card）
  cardTheme: CardThemeData(
    elevation: 2,
    margin: const EdgeInsets.all(8), // 外边距
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // 圆角边框
    ),
  ),

  /// 输入框样式（TextField、TextFormField）
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(), // 默认边框
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.indigo), // 焦点时边框颜色
    ),
    labelStyle: TextStyle(color: Colors.indigo), // 标签文字颜色
  ),
);

/// 🌚 暗黑主题（可选）
/// 如果不自定义，可用 ThemeData.dark()
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  fontFamily: 'MyFont',
);
