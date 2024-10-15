import 'package:flutter/material.dart';
import 'package:flutter_pr6/src/presentation/homePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            const Text("Profile Page", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 24,),
            ElevatedButton(
              onPressed: () { 
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text("Назад"),
            ),
          ],
        )
      )
    );
  }
}