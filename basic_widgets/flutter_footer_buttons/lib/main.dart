import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter examples'),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),  
        persistentFooterButtons: const [
          TextButton(onPressed: null, child: Icon(Icons.map)),
          TextButton(onPressed: null, child: Icon(Icons.view_week)),
        ],
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.home),
                  label: const Text('Home')),
              TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.mail),
                  label: const Text('Mail')),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 55,
          color: Colors.cyan,
          child: const Column(
            children: [
              Row(
                children: [
                  Icon(Icons.place),
                  SizedBox(width: 5, height: 5),
                  Text('99 Valencia St, San Francisco, CA')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 5, height: 5),
                  Text('(415) 339-0942)')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
