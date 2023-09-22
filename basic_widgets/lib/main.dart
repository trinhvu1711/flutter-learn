import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(title: 'My App', home: SafeArea(child: MyScaffold())));
}

class MainApp extends StatelessWidget {
  const MainApp({required this.title, super.key});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu'),
          Expanded(child: title),
          const IconButton(
              onPressed: null, icon: Icon(Icons.search), tooltip: 'Search')
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MainApp(
            title: Text('Example title',
                style: Theme.of(context).primaryTextTheme.titleLarge),
          ),
          const Expanded(
              child: Center(
            child: Text('Hello, world'),
          ))
        ],
      ),
    );
  }
}
