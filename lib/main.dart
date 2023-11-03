import 'package:flutter/material.dart';
import 'package:pasen/config/router/app_routes.dart';
import 'package:pasen/presentation/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:pasen/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider() )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: AppTheme(selectedColor: 1).getTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
