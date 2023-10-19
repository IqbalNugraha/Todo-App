import 'package:flutter/material.dart';
import 'package:todo_app/presentation/auth/login_page.dart';
import 'package:todo_app/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      home: const LoginPage(),
    );
  }
}
