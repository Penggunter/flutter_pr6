import 'package:flutter/material.dart';
import 'package:flutter_pr6/src/presentation/profilePage.dart';
import 'package:flutter_pr6/src/presentation/settingPage.dart';
import 'package:flutter_pr6/src/presentation/themePage.dart';
import 'src/presentation/homePage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_pr6/src/presentation/chatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage(),),
      GoRoute(path: '/chat', builder: (context, state) => ChatPage(),),
      GoRoute(path: '/profile', builder: (context, state) => ProfilePage(),),
      GoRoute(path: '/setting', builder: (context, state) => SettingPage(),),
      GoRoute(path: '/theme', builder: (context, state) => ThemePage(),),
    ],
  );

  @override
  Widget build(BuildContext context) {
    Widget MainPage;

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 241, 222, 14)),
        useMaterial3: true,
      ),
      //home: HomePage(),
      routerConfig: _router,
    );
  }
}
