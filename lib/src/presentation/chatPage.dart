import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Chat Page", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 24,),
            ElevatedButton(
              onPressed: () { 
                
              },
              child: Text("Назад"),
            ),
          ],
        )
      )
    );
  }
}