import 'package:flutter/material.dart';
import 'package:flutter_pr6/src/presentation/profilePage.dart';
import 'package:flutter_pr6/src/presentation/settingPage.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  List<Widget> _arrayPage = [Text("index: 0"), Text("index: 1")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("pr6"),
      ),
      body: Center(
        child: _arrayPage[_currentPageIndex],
      ),

      // NavigationBar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            switch (index) {
              // HomePage
              case 0:
                _currentPageIndex = index;
                break;
              // ChatPage
              case 1:
                context.go('/chat');
                break;
              // ProfilePage
              case 2:
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()),);
                break;
              // SettingPage
              case 3:
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()),);
                break;
              // ThemePage
              case 4:
                _currentPageIndex = index;
                break;
            };
          });
        },
        selectedIndex: _currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          NavigationDestination(
            icon: Icon(Icons.night_shelter),
            label: 'Theme',
          ),
        ]
      ),
    );
  }
}