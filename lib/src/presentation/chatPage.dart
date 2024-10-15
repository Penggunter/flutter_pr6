import 'package:flutter/material.dart';
import 'package:flutter_pr6/main.dart';
import 'package:go_router/go_router.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
            const Text("Chat Page", style: TextStyle(fontSize: 24)),
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