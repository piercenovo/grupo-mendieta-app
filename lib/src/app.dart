import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grupo_mendieta/src/core/utils/theme/theme.dart';
import 'package:grupo_mendieta/src/features/start/presentation/views/main/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grupo Mendieta',
      theme: theme(),
      home: const MainScreen(),
    );
  }
}
