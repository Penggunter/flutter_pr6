import 'package:flutter/material.dart';
import 'src/presentation/homePage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_pr6/src/presentation/chatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final GoRouter _router = GoRouter(
  //   routes: [
  //     GoRoute(path: '/', builder: (context, state) => HomePage(),),
  //     GoRoute(path: '/chat', builder: (context, state) => ChatPage(),),
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    Widget MainPage;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 241, 222, 14)),
        useMaterial3: true,
      ),
      home: HomePage(),
      //routerConfig: _router,
    );
  }
}
