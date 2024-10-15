import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("pr6"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
             const Text("Settings Page", style: TextStyle(fontSize: 24)),
             const SizedBox(height: 30,),
             ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Назад"),
             )
          ],
        )
        
      ) 
    );
  }
}