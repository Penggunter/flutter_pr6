import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("pr6"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Theme Page", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 24,),
            ElevatedButton(
              onPressed: () { 
                context.go('/');
              },
              child: Text("Назад"),
            ),
          ],
        )
      )
    );
  }
}