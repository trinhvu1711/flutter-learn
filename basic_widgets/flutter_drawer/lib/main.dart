import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage(title: 'Flutter drawer'));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: const Center(
        child: Text(
          'HelloWorld',
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Hell World',
                style: TextStyle(color: Colors.green, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Gallery'),
            ),
            ListTile(
              title: Text('SlideShow'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.account_circle)),
        ],
        currentIndex: 0,
        fixedColor: Colors.green,
      ),
    );
  }
}
